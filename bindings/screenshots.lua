o.bind("SUPER + SHIFT + F2", "Screenshot area", hl.dsp.exec_cmd("hyprshot -m region -o ~/Image/Screenshots -c"))

o.bind("SUPER + CONTROL + F2", "Screenshot window", hl.dsp.exec_cmd("hyprshot -m window -o ~/Image/Screenshots -c"))

o.bind("SUPER + F2", "Screenshot output", hl.dsp.exec_cmd("hyprshot -m output -o ~/Image/Screenshots -c"))

o.bind(
	"SUPER + CONTROL + SHIFT + F2",
	"Take Screenshot",
	hl.dsp.exec_cmd(
		'grim -g "$(slurp -d)" - grim -g "$(hyprctl activewindow -j | jq -r \'".at[0]",".at[1]" ".size[0]",".size[1]"\')" - | wl-copy'
	)
)
