Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

RegisterCommand("group", function(source, args)
    local Passport = vRP.Passport(source)

    if not vRP.HasGroup(Passport, "Admin") or Passport > 10 then
        return vRP.Notify(
            source,
            "Notificação",
            "Você não pode usar este comando.",
            "vermelho"
        )
    end

    local id, group, hierarchy = args[1], args[2], args[3]

    if not id or not group or not hierarchy or not Passport then
        return vRP.Notify(
            source,
            "Notificação",
            "Uso incorreto do comando. Exemplo: /group [ID] [grupo] [hierarquia]",
            "vermelho"
        )
    end

    local CheckGroupExists = vRP.Groups()[group] or false

    if not CheckGroupExists then
        return vRP.Notify(
            source,
            "Notificação",
            "O Grupo " .. group .. " não foi encontrado.",
            "vermelho"
        )
    end

    vRP.SetPermission(id, group, hierarchy)

    if vRP.HasPermission(id, group) then
        return vRP.Notify(
            source,
            "Notificação",
            "Grupo " .. group .. " adicionado com sucesso ao ID " .. id .. " na hierarquia " .. hierarchy .. ".",
            "verde"
        )
    end

    return vRP.Notify(
        source,
        "Notificação",
        "Não foi possível adicionar o grupo " .. group .. " ao ID " .. id .. " na hierarquia " .. hierarchy .. ".",
        "vermelho"
    )
end)
