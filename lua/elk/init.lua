local M = {}

--- plugin setup
--- @param opts Elk.Options.options option overrides
function M.setup(opts)
	local options = require("elk.options")

	-- set options
	options.set(opts)

	-- validate
	if not options.validate() then
		return
	end

	-- setup rest of plugin
	require("elk.elk").setup()
end

return M
