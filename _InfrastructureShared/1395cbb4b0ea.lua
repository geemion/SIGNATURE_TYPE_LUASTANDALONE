-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1395cbb4b0ea 

-- params : ...
-- function num : 0
if not (pe.isdynamic_va)(pevars.sigaddr) then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("PEBMPAT:Virus:Win32/Xpaj.gen!F") then
  return mp.CLEAN
end
return mp.INFECTED

