-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_SefnitFileName.C 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  if (l_0_2 == "themesmon.exe" or l_0_2 == "sensmon.exe" or l_0_2 == "networkmon.exe" or l_0_2 == "dnscsh.exe" or l_0_2 == "schdiphlp.exe" or l_0_2 == "srchdev.exe") and ((string.sub)(l_0_1, -9) == "\\system32" or (string.sub)(l_0_1, -9) == "\\syswow64") then
    (mp.set_mpattribute)("Lua:SefnitFileName.C")
  end
end
do
  return mp.CLEAN
end

