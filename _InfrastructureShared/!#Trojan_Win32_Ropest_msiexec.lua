-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Trojan_Win32_Ropest_msiexec 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME) == "msiexec.exe" and ((pe.get_versioninfo)()).CompanyName ~= "Microsoft Corporation" then
  return mp.INFECTED
end
return mp.CLEAN

