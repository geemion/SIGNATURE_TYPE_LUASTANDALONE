-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/862974796d4c 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 4000 and (mp.get_mpattribute)("BM_TEXT_FILE") then
  return mp.INFECTED
end
return mp.CLEAN

