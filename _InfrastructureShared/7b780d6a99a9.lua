-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7b780d6a99a9 

-- params : ...
-- function num : 0
if peattributes.isdll ~= true and peattributes.hasexports ~= true then
  return mp.CLEAN
end
if (pe.get_exports)() == 1 then
  return mp.INFECTED
end
return mp.CLEAN

