-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/354020b403f4 

-- params : ...
-- function num : 0
if peattributes.isvbpcode ~= true then
  return mp.CLEAN
end
if (mp.getfilesize)() > 512000 then
  return mp.CLEAN
end
return mp.INFECTED

