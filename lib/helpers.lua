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
