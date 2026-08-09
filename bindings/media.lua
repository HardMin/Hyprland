o.bind(
	"XF86AudioRaiseVolume",
	"Up Volume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
o.bind(
	"XF86AudioLowerVolume",
	"Down Volume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
o.bind(
	"XF86AudioMute",
	"Mute Volume",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
o.bind(
	"XF86AudioMicMute",
	"Mute Microphone",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
o.bind(
	"XF86MonBrightnessUp",
	"Up Brightness",
	hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),
	{ locked = true, repeating = true }
)
o.bind(
	"XF86MonBrightnessDown",
	"Down Brightness",
	hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),
	{ locked = true, repeating = true }
)

-- Requires playerctl
-- o.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
-- o.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
-- o.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
-- o.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
