-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6f77817a92840 

-- params : ...
-- function num : 0
if ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_RESOURCE]).RVA == 0 then
  return mp.CLEAN
end
if (mp.getfilesize)() >= 307200 or (mp.getfilesize)() < 51200 then
  return mp.CLEAN
end
return mp.INFECTED
