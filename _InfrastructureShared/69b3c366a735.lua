-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69b3c366a735 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((this_sigattrlog[5]).utf8p2)
if (string.find)(l_0_0, "rundll32", 1, true) and (string.find)(l_0_0, "onlogon", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

