-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8f41fc3dadcc 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("SIGATTR:Upatre!antiemu_vdll_max8_noseccheck")
if (pesecs[1]).SizeOfRawData ~= 1536 then
  return mp.CLEAN
end
return mp.INFECTED

