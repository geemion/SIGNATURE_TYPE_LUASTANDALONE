-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1589689c9d15 

-- params : ...
-- function num : 0
local l_0_0 = (mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 1, 4), 1)
;
(mp.readprotection)(false)
local l_0_1 = (mp.readu_u32)((pe.mmap_va)(l_0_0, 4), 1)
if l_0_1 ~= 67372036 then
  return mp.CLEAN
end
if (mp.readu_u32)((pe.mmap_va)(l_0_1, 16), 1) ~= 0 then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(pevars.sigaddr + 7, "3\192")
return mp.INFECTED

