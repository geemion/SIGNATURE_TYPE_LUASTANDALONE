-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3a786a51a5a1_Flags_1 

-- params : ...
-- function num : 0
if (pesecs[2]).Name == ".text1" and (pesecs[5]).VirtualSize > 65536 then
  return mp.SUSPICIOUS
end
return mp.CLEAN

