-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/418921d009b6 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 1, 4)
local l_0_1 = (mp.readu_u32)(l_0_0, 1)
;
(mp.readprotection)(false)
if (pe.mmap_va)(l_0_1, 9) == "myapp.exe" then
  return mp.INFECTED
end
return mp.CLEAN

