-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c26119265289 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.getfilesize)() >= 614400 and (mp.getfilesize)() <= 1536000 then
  return mp.INFECTED
end
return mp.CLEAN

