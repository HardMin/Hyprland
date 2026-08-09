local terminal = "kitty"
local fileManager = "dolphin"
local menu = "hyprlauncher"
local browser = "brave"

o.bind("SUPER + w", "Close Window", hl.dsp.window.close())

o.bind("SUPER + RETURN", "Terminal Kitty", hl.dsp.exec_cmd(terminal))

o.bind("SUPER + E", "File Manager", hl.dsp.exec_cmd(fileManager))

o.bind("SUPER + R", "Menu Hyprlauncher", hl.dsp.exec_cmd(menu))

o.bind("SUPER + SHIFT + w", "Browser", hl.dsp.exec_cmd(browser))
