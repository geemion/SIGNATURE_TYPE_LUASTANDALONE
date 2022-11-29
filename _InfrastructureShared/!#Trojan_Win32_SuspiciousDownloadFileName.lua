-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Trojan_Win32_SuspiciousDownloadFileName 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  local l_0_3 = (mp.getfilesize)()
  if l_0_3 > 1000000 then
    return mp.CLEAN
  end
  if l_0_2 == "exe[1].exe" and (string.sub)(l_0_1, -45, -22) == "temporary internet files" then
    (mp.set_mpattribute)("LUA:SuspiciousDownloadFileName")
  end
end
do
  return mp.CLEAN
end

