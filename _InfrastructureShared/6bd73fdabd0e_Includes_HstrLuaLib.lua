-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6bd73fdabd0e_Includes_HstrLuaLib 

-- params : ...
-- function num : 0
if not isTamperProtectionOn() then
  return mp.LOWFI
end
return mp.INFECTED

