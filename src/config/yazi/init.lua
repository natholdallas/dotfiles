require("full-border"):setup()
require("starship"):setup()
require("git"):setup()

function Linemode:size_and_mtime()
	local size = self._file:size()
	return ui.Line(string.format("%s", size and ya.readable_size(size) or ""))
end
