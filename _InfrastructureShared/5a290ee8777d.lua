-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5a290ee8777d 

-- params : ...
-- function num : 0
if (string.find)((mp.getfilename)(), "%->%(RarSfx%)%->%w+%.exe%->%(RarSfx%)") == nil then
  return mp.CLEAN
end
return mp.INFECTED

