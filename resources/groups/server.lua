Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

lib.locale()

RegisterCommand("group", function(source, args)
    local Passport = vRP.Passport(source)

    local notify = {
        title = locale("notify_title")
    }

    if not vRP.HasGroup(Passport, "Admin") or Passport > 10 then
        return vRP.Notify(
            source,
            notify.title,
            locale("notify_not_allowed"),
            "vermelho"
        )
    end

    local id, group, hierarchy = args[1], args[2], args[3]

    if not id or not group or not hierarchy or not Passport then
        return vRP.Notify(
            source,
            notify.title,
            locale("notify_incorrect_usage"),
            "vermelho"
        )
    end

    local CheckGroupExists = vRP.Groups()[group] or false

    if not CheckGroupExists then
        return vRP.Notify(
            source,
            notify.title,
            locale("notify_group_not_found", group),
            "vermelho"
        )
    end

    vRP.SetPermission(id, group, hierarchy)

    if vRP.HasPermission(id, group) then
        return vRP.Notify(
            source,
            notify.title,
            locale("notify_set_success", group, id, hierarchy),
            "verde"
        )
    end

    return vRP.Notify(
        source,
        notify.title,
        locale("notify_set_error", group, id, hierarchy),
        "vermelho"
    )
end)
