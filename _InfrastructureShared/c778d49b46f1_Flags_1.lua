-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c778d49b46f1_Flags_1 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC26: Unhandled construct in 'MakeBoolean' P3

if (pehdr.SizeOfImage >= 786432 and pehdr.SizeOfImage <= 851968) or pehdr.SizeOfImage < 479232 or pehdr.SizeOfImage >= 589824 and pehdr.SizeOfImage <= 606208 then
  return mp.INFECTED
end
;
(mp.changedetectionname)(805306378)
return mp.SUSPICIOUS

