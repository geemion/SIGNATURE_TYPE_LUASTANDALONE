-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3478e037e6f2 

-- params : ...
-- function num : 0
if peattributes.isdll == true and peattributes.no_security == true and (mp.getfilesize)() < 850000 then
  return mp.INFECTED
end
return mp.CLEAN

