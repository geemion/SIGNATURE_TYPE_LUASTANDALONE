-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/66b325c5ce4b_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
if IsTacticObservedGlobal("credentialdumping_concrete") then
  local l_0_0 = (bm.get_current_process_startup_info)()
  local l_0_1 = l_0_0.command_line
  if l_0_1 ~= nil then
    bm_AddRelatedFileFromCommandLine(l_0_1)
  end
  sms_untrusted_process()
  add_parents()
  return mp.INFECTED
end
do
  return mp.CLEAN
end

