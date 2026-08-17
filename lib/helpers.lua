o = o or {}

local function shell_quote(value)
	return '"' .. value:gsub('"', '\\"') .. '"'
end

o.shell_quote = shell_quote

function o.launch(command)
	return "uwsm-app -- " .. command
end

function o.bind(key, description, action, options)
	local opts = options or {}

	if description then
		opts.description = description
	end

	hl.bind(key, action, opts)
end

function o.notify(text)
	hl.notification.create({
		text = text,
		timeout = 2500, -- Tiempo en milisegundos (2.5 segundos)
		font_size = 14,
	})
end
