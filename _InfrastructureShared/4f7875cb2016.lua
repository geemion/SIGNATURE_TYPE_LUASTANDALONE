-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4f7875cb2016 

-- params : ...
-- function num : 0
if not peattributes.hasappendeddata then
  return mp.CLEAN
end
if not peattributes.isvbpcode then
  return mp.CLEAN
end
if not peattributes.dirty_wx_branch then
  return mp.CLEAN
end
return mp.INFECTED

