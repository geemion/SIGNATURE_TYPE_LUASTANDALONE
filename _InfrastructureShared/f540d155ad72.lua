-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f540d155ad72 

-- params : ...
-- function num : 0
if peattributes.isvbnative == true and peattributes.no_security == true and (mp.getfilesize)() < 323584 then
  return mp.INFECTED
end
return mp.CLEAN

