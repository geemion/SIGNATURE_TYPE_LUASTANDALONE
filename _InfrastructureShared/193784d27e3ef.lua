-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/193784d27e3ef 

-- params : ...
-- function num : 0
if peattributes.isvbnative == true and peattributes.isexe == true and (mp.getfilesize)() < 1048000 then
  return mp.INFECTED
else
  if (mp.get_mpattribute)("HSTR:IsVB6") and peattributes.isexe == true and (mp.getfilesize)() < 1048000 then
    return mp.INFECTED
  end
end
return mp.CLEAN

