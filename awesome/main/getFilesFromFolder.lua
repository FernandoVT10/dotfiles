local function get_files_from_folder(path)
  local res = io.popen(string.format("find \"%s\" -maxdepth 1 -type f", path))

  if res == nil then
    return {}
  end

  local files = {}
  local i = 0

  for file in res:lines() do
    files[i] = file
    i = i + 1
  end

  return files
end

return get_files_from_folder
