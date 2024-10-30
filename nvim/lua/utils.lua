function toggleLspDiagnostic()
	local config = vim.diagnostic.config
	local vt = config().virtual_text
	config {
		virtual_text = not vt,
		underline = not vt,
		signs = not vt,
	}
end

return {
  toggleLspDiagnostic = toggleLspDiagnostic
}
