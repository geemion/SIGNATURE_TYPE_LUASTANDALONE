-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b3bb119c06_Includes_TechniqueTracker,BMLuaLib 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") then
  local l_0_0 = (bm.get_current_process_startup_info)()
  if l_0_0 == nil or l_0_0.command_line == nil then
    return mp.CLEAN
  end
  bm_AddRelatedFileFromCommandLine(l_0_0.command_line, nil, nil, 1)
  local l_0_1, l_0_2 = (bm.get_process_relationships)()
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    (bm.add_threat_process)(l_0_7.ppid)
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

