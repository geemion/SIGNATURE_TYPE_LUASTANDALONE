-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1ed7853fc7f2b 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 5 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:Program:Win32/SoftwareClicker.A")
return mp.CLEAN

