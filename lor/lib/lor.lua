local type = type

local Route = include("lor.lib.router.route")
local Router = include("lor.lib.router.router")
local Request = include("lor.lib.request")
local Response = include("lor.lib.response")
local Application = include("lor.lib.application")
local Wrap = include("lor.lib.wrap")

LOR_FRAMEWORK_DEBUG = false

local createApplication = function(options)
    if options and options.debug and type(options.debug) == 'boolean' then
        LOR_FRAMEWORK_DEBUG = options.debug
    end

    local app = Application:new()
    app:init()

    return app
end


local lor = Wrap:new(createApplication, Router, Route, Request, Response)
return lor