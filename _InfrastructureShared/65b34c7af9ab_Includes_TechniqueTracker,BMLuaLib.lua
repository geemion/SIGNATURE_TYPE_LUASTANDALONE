-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/65b34c7af9ab_Includes_TechniqueTracker,BMLuaLib 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 == nil or l_0_0.command_line == nil then
  return mp.CLEAN
end
bm_AddRelatedFileFromCommandLine(l_0_0.command_line, nil, nil, 1)
AddResearchData(l_0_0.ppid, true)
return mp.INFECTED

