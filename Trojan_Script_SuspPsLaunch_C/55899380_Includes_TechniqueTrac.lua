-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/Trojan_Script_SuspPsLaunch_C/55899380_Includes_TechniqueTrac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_AMSI then
    local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
    if l_0_1:find("cscript", 1, true) or l_0_1:find("wscript", 1, true) then
      TrackPidAndTechnique("AMSI", "T1047", "WMIInstrumentation")
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

