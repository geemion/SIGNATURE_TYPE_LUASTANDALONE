-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7878912c26e4 

-- params : ...
-- function num : 0
if peattributes.isdll == true and peattributes.no_security == true and (mp.getfilesize)() < 3000000 then
  return mp.INFECTED
end
return mp.CLEAN

