-- require("full-border"):setup()
-- require("bookmarks"):setup({
-- 	last_directory = { enable = false, persist = false },
-- 	persist = "all",
-- 	desc_format = "full",
-- 	file_pick_mode = "hover",
-- 	notify = {
-- 		enable = false,
-- 		timeout = 1,
-- 		message = {
-- 			new = "New bookmark '<key>' -> '<folder>'",
-- 			delete = "Deleted bookmark in '<key>'",
-- 			delete_all = "Deleted all bookmarks",
-- 		},
-- 	},
-- })

function Linemode:size_and_mtime()
	local size = self._file:size()
	return ui.Line(string.format("%s", size and ya.readable_size(size) or ""))
end
