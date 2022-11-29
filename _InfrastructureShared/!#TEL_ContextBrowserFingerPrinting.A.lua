-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_ContextBrowserFingerPrinting.A 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_0 ~= "iexplore.exe" and l_0_0 ~= "microsoftedgecp.exe" then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
if l_0_1 == nil then
  return mp.CLEAN
end
if (string.find)(l_0_1, "bitdefender", 1, true) or (string.find)(l_0_1, "eset", 1, true) or (string.find)(l_0_1, "ffdec", 1, true) or (string.find)(l_0_1, "fiddler", 1, true) or (string.find)(l_0_1, "oracle", 1, true) or (string.find)(l_0_1, "vmware", 1, true) or (string.find)(l_0_1, "wireshark", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

