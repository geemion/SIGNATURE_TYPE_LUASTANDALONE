-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5529bcbc29cd 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 1000 and (mp.get_mpattribute)("BM_TEXT_FILE") then
  return mp.INFECTED
end
return mp.CLEAN

