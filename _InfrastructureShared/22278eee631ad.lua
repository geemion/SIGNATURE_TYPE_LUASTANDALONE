-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/22278eee631ad 

-- params : ...
-- function num : 0
if peattributes.isexe and pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections <= 9 and (mp.getfilesize)() >= 65536 and (mp.getfilesize)() <= 4194304 then
  return mp.INFECTED
end
return mp.CLEAN

