-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/64783087c52f 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 1500000 and (mp.getfilesize)() < 2500000 and pehdr.Machine == 332 and ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).RVA == 0 and ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_IMPORT]).Size < 144 and pehdr.NumberOfSections == 4 then
  return mp.INFECTED
end
return mp.CLEAN

