-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b34e366b3d_Includes_BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
reportAndSinkholeDNSTelemetry("altDNSServerUsage", "AlternateDNSServerUsage")
;
(MpCommon.SetPersistContextNoPath)("altDNSServerUsage", {}, 1)
;
(bm.add_related_string)("debug", "Current", bm.RelatedStringBMReport)
reportPersistedContext("dnsServers", "bmurl", "AlternateDNSServerUsage")
;
(bm.add_related_string)("debug", "Previous", bm.RelatedStringBMReport)
reportPersistedContext("lastDnsServers", "bmurl", "AlternateDNSServerUsage")
;
(bm.add_related_string)("debug", "Refresh", bm.RelatedStringBMReport)
updateSystemDNSServers()
reportPersistedContext("dnsServers", "bmurl", "AlternateDNSServerUsage")
return mp.INFECTED

