-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#PEPCODE_Rorpian 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 6 then
  return mp.CLEAN
end
if pehdr.SizeOfImage < 106496 then
  return mp.CLEAN
end
if pehdr.SizeOfImage > 110592 then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 2019914798 then
  return mp.CLEAN
end
if (pesecs[1]).Characteristics ~= 1610612768 then
  return mp.CLEAN
end
return mp.INFECTED

