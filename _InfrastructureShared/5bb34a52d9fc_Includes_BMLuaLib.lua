-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5bb34a52d9fc_Includes_BMLuaLib 

-- params : ...
-- function num : 0
if analyzeRansomNotePattern(1) == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

