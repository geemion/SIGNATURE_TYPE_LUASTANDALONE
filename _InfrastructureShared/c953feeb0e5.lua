-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c953feeb0e5 

-- params : ...
-- function num : 0
if (pe.isdynamic_va)(pevars.sigaddr) and (mp.get_mpattribute)("PEBMPAT:AntiEmuGetCopyOnWriteCount") then
  (pe.set_regval)(pe.REG_EAX, 4294967295)
  ;
  (mp.set_mpattribute)("PEBMPAT:AntiEmuChkCopyOnWriteCount")
end
return mp.CLEAN

