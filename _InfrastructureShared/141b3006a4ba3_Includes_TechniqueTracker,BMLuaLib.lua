-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/141b3006a4ba3_Includes_TechniqueTracker,BMLuaLib 

-- params : ...
-- function num : 0
if is_excluded_parent_proc_auto() then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1547.001", "persistence_runkeys_b")
return mp.INFECTED

