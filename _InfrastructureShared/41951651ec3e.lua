-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41951651ec3e 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)((pe.get_regval)(pe.REG_ESP) + 4, 4)
l_0_0 = (mp.readu_u32)(l_0_0, 1)
local l_0_1 = (pe.moffset_va)(l_0_0)
;
(mp.readprotection)(false)
local l_0_2 = (pe.mmap_va)(l_0_1, 4)
l_0_2 = (mp.readu_u32)(l_0_2, 1)
if l_0_2 ~= 909132101 then
  return mp.CLEAN
end
l_0_2 = (pe.mmap_va)(l_0_1 - 4, 4)
l_0_2 = (mp.readu_u32)(l_0_2, 1)
if l_0_2 == 557012289 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:Autoit!Modified")
local l_0_3 = (mp.getfilesize)()
if l_0_3 < 65536 or l_0_3 > 5242880 then
  return mp.CLEAN
end
local l_0_4 = (mp.readfile)(l_0_0 - 20, l_0_3 - (l_0_0 - 20))
;
(mp.vfo_add_buffer)(l_0_4, "[AutoIT_Script]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

