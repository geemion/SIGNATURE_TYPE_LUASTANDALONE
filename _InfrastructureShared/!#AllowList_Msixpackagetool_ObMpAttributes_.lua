-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#AllowList_Msixpackagetool_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_AMSI then
    local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
    if l_0_1:find("msixpackagetool.exe", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

