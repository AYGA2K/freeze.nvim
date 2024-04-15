local default_opts = {
	save_path = "~/Pictures/",
}

local function setup(opts)
	default_opts = vim.tbl_extend("force", default_opts, opts or {})
end

local function freeze()
	local current_file_name = vim.fn.expand("%:t")
	local saved_file_path = default_opts.save_path .. current_file_name
	local current_file_path = vim.fn.expand("%:p")
	local cmd = string.format("freeze %s -o %s.png ", current_file_path, saved_file_path)
	local status = vim.fn.system(cmd)
	if string.match(status, "%S+") == "WROTE" then
		vim.notify("Current file is frozen and saved as " .. saved_file_path)
	else
		vim.notify("Failed to freeze current file.")
	end
end

return {
	setup = setup,
	freeze = freeze,
}
