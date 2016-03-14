
_G.NULL     = ngx.null
ngx.log(ngx.ERR, package.path)
ngx.log(ngx.ERR, package.cpath)

_G.include  = _G.include or function(modname)

    local app_modname   = ngx.var.APP_NAME .. '.' .. modname
    local ok, mod       = pcall(require, app_modname)

    if ok then
        return mod
    else
        ngx.log(ngx.WARN, app_modname..'<>'..mod)
    end

    local ok, mod       = pcall(require, modname)
    if ok then
        return mod
    else
        ngx.log(ngx.ERR, modname..'<>'..mod)
    end

    error(mod, 2)
    -- return nil, errmessage
    -- return nil, mod
end