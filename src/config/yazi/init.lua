---@diagnostic disable

local function safe_require(name)
	local ok, mod = pcall(require, name)
	if not ok then
		return setmetatable({}, {
			__index = function(_, _)
				return function() end
			end,
		})
	end
	return mod
end

function Linemode:size_and_mtime()
	local size = self._file:size()
	return ui.Line(string.format("%s", size and ya.readable_size(size) or ""))
end

safe_require("full-border"):setup({
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
})

safe_require("starship"):setup({
	-- Hide flags (such as filter, find and search). This is recommended for starship themes which
	-- are intended to go across the entire width of the terminal.
	hide_flags = false, -- Default: false
	-- Whether to place flags after the starship prompt. False means the flags will be placed before the prompt.
	flags_after_prompt = true, -- Default: true
	-- Custom starship configuration file to use
	-- config_file = "~/.config/starship_full.toml", -- Default: nil
})

safe_require("copy-file-contents"):setup({
	append_char = "\n",
	notification = true,
})

safe_require("recycle-bin"):setup({
	-- Optional: Override automatic trash directory discovery
	-- trash_dir = "~/.local/share/Trash/",  -- Uncomment to use specific directory
})
