-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/46b3bfd7cd45_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if IsTacticObservedGlobal("processinjection_source_dridex", true) or IsTacticObservedGlobal("processinjection_target_dridex", true) then
  return mp.INFECTED
end
return mp.CLEAN

