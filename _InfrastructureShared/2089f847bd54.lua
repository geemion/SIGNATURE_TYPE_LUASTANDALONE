-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2089f847bd54 

-- params : ...
-- function num : 0
local l_0_0 = pevars.sigaddr
local l_0_1 = 256
local l_0_2 = (pe.mmap_va)(l_0_0, l_0_1)
local l_0_3 = (string.find)(l_0_2, "h\132\003%z%z")
local l_0_4 = (string.find)(l_0_2, "`\174\n%z")
if l_0_3 > 0 and l_0_4 > 0 then
  (pe.mmap_patch_va)(l_0_0 + 6, "��")
  ;
  (pe.mmap_patch_va)(l_0_0 + 14, "\235")
  for l_0_8 = 1, 192 do
    if (pe.mmap_va)(l_0_0 + l_0_8 + 64, 3) == "\000\255\021" then
      (pe.mmap_patch_va)(l_0_0 + l_0_8 + 65, "������")
    end
  end
  ;
  (mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
  return mp.INFECTED
end
return mp.CLEAN

