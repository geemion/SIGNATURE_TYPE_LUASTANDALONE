-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1b8999c6c74b 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("//HSTR:Necurs_Patched") and (mp.getfilesize)() < 180000 then
  local l_0_0 = pehdr.ImageBase
  if (mp.readu_u32)((pe.mmap_va)((pe.get_regval)(pe.REG_ESP), 4), 1) == pehdr.AddressOfEntryPoint + 5 + l_0_0 then
    local l_0_1 = (pesecs[1]).VirtualAddress + l_0_0 + 4096
    local l_0_2 = l_0_1 + 1280
    local l_0_3 = 0
    l_0_3 = (pe.vm_search)(l_0_1, l_0_2, "\255\255�E\144\t\v\000�L��\001\001�\000", nil, pe.VM_SEARCH_BM)
    if l_0_3 ~= 4294967295 then
      (pe.mmap_patch_va)(l_0_3 - 6, "D")
      ;
      (mp.set_mpattribute)("//HSTR:Necurs_Patched")
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

