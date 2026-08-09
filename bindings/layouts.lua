o.bind("SUPER + f", "Toggle Window Fullscreen", hl.dsp.window.fullscreen())

o.bind("SUPER + V", "Toggle Window Float", hl.dsp.window.float({ action = "toggle" }))
o.bind("SUPER + P", "Toggle Window Pseudo ", hl.dsp.window.pseudo())
o.bind("SUPER + SHIFT + f", "Toggle Window Split", hl.dsp.layout("togglesplit")) -- dwindle only

-- Move focus with mainMod + arrow keys
o.bind("SUPER + h", "Move Focus Left", hl.dsp.focus({ direction = "left" }))
o.bind("SUPER + l", "Move Focus Right", hl.dsp.focus({ direction = "right" }))
o.bind("SUPER + k", "Move Focus Up", hl.dsp.focus({ direction = "up" }))
o.bind("SUPER + j", "Move Focus Down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	o.bind("SUPER + " .. key, "Move Focus to Workspace " .. i, hl.dsp.focus({ workspace = i }))
	o.bind("SUPER + SHIFT + " .. key, "Move Window to Workspace " .. i, hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces with mainMod + scroll
o.bind("SUPER + mouse_down", "Move Focus to Workspace Above", hl.dsp.focus({ workspace = "e+1" }))
o.bind("SUPER + mouse_up", "Move Focus to Workspace Below", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
o.bind("SUPER + mouse:272", "Move Window", hl.dsp.window.drag(), { mouse = true })
o.bind("SUPER + mouse:273", "Resize Window", hl.dsp.window.resize(), { mouse = true })
