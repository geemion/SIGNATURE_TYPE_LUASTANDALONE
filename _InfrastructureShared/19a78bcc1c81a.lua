-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/19a78bcc1c81a 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2024000 and pehdr.NumberOfSections == 3 then
  return mp.INFECTED
end
return mp.CLEAN
