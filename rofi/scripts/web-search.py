#!/bin/python3

import requests
import sys

from subprocess import Popen, DEVNULL
from xml.dom import minidom

CONFIG = {
    "search_urls": {
        "brave": "https://search.brave.com/search?q=",
        "google": "https://google.com/search?q="
    },
    "suggestions_urls": {
        "brave": "https://search.brave.com/api/suggest?q=",
        "google": "https://google.com/complete/search?output=toolbar&q="
    }
}

def open_browser(url):
    Popen(["xdg-open", url], stdout=DEVNULL)
    sys.exit()

def get_suggestions(search_engine, search_string):
    if search_engine == "google":
        suggestions_url = CONFIG["suggestions_urls"]["google"] + search_string

        req = requests.get(suggestions_url)

        xml_res = minidom.parseString(req.text)
        xml_suggestions = xml_res.getElementsByTagName("suggestion")

        suggestions = []

        for xml_suggestion in xml_suggestions:
            suggestions.append(xml_suggestion.getAttribute("data"))

        return suggestions
    else:
        suggestions_url = CONFIG["suggestions_urls"]["brave"] + search_string
        req = requests.get(suggestions_url)
        res = req.json()

        suggestions = res[1:][0]
        return suggestions

def print_suggestions(suggestions, search_engine):
    icon_path = f"/home/fernando/.config/rofi/icons/{search_engine}.svg"

    for suggestion in suggestions:
        print(f"{search_engine.capitalize()}: {suggestion}\0icon\x1f{icon_path}")
    sys.exit()

def check_search_string(search_string):
    url = ""

    if search_string.startswith("Brave: "):
        query = search_string.replace("Brave: ", "")
        url = CONFIG["search_urls"]["brave"] + query

    elif search_string.startswith("Google: "):
        query = search_string.replace("Google: ", "")
        url = CONFIG["search_urls"]["google"] + query

    elif search_string.startswith("https://") or search_string.startswith("http://"):
        url = search_string

    elif ".com" in search_string:
        url = f"https://{search_string}"

    else:
        return

    open_browser(url)

def main():
    search_string = sys.argv[1]
    search_engine = "brave"

    check_search_string(search_string)

    # The default search engine is brave,
    # if you want to use google instead, you'll need to use ":g <Your Search>"

    if search_string.startswith(":g"):
        search_string = search_string.replace(":g ", "")
        search_engine = "google"

    suggestions = get_suggestions(search_engine, search_string)
    print_suggestions(suggestions, search_engine)

if __name__ == "__main__":
    try:
        main()
    except Exception as e:
        if e:
            sys.exit(1)
