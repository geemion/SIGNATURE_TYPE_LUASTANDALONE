-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/Trojan_PowerShell_MSIlAmsiTamperDetect_B/45237720_Includes_TechniqueTrac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_0:find("powershell", 1, true) then
  TrackPidAndTechnique("AMSI", "T1562.001", "amsitampering")
  return mp.INFECTED
end
return mp.CLEAN
