-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3a782121f7fb 

-- params : ...
-- function num : 0
if peattributes.isvbnative == true and peattributes.no_security == true and (mp.getfilesize)() < 2097152 then
  return mp.INFECTED
end
return mp.CLEAN

