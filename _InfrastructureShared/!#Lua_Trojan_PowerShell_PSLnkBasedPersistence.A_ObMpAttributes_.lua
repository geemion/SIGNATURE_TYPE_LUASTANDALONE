-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_Trojan_PowerShell_PSLnkBasedPersistence.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.UfsGetMetadataBool)("LnkWithPowerShellCmd", true)
if l_0_0 == 0 and l_0_1 == true then
  (mp.ReportLowfi)((mp.getfilename)(), 818474255)
  return mp.INFECTED
end
return mp.CLEAN

