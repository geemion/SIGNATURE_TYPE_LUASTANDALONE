-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6e1b3e1590383_Includes_BMLuaLib 

-- params : ...
-- function num : 0
if isTamperProtectionOn() then
  return mp.INFECTED
end
return mp.CLEAN

