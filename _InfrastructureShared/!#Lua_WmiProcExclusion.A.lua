-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_WmiProcExclusion.A 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_AMSI then
    local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
    if l_0_1:find("ccmexec.exe", 1, true) or l_0_1:find("tiworker.exe", 1, true) or l_0_1:find("taniumclient.exe", 1, true) or l_0_1:find("lansweeperservice.exe", 1, true) or l_0_1:find("rg_supervision.exe", 1, true) or l_0_1:find("svchost.exe", 1, true) or l_0_1:find("taniumcx.exe", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

