-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8d78aa7ad856 

-- params : ...
-- function num : 0
if peattributes.hasappendeddata and (mp.getfilesize)() - ((pesecs[pehdr.NumberOfSections]).PointerToRawData + (pesecs[pehdr.NumberOfSections]).SizeOfRawData) > 65536 then
  return mp.INFECTED
end
return mp.LOWFI

