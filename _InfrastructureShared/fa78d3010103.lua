-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/fa78d3010103 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 10 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:Rogue:Win32/Trapwot_Lowfi")
return mp.CLEAN

