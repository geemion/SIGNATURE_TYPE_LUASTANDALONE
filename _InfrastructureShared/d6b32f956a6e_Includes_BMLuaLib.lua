-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d6b32f956a6e_Includes_BMLuaLib 

-- params : ...
-- function num : 0
if analyzeRansomwarePattern1() == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

