-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_Trojan_PowerShell_PSLnkReadEndOfFile.A 

-- params : ...
-- function num : 0
if (mp.UfsGetMetadataBool)("LnkWithPowerShellCmd", true) == 0 and "LnkWithPowerShellCmd" == true and (mp.get_mpattribute)("SCPT:PSReadEndOfFileSameFolder.A") then
  return mp.INFECTED
end
return mp.CLEAN

