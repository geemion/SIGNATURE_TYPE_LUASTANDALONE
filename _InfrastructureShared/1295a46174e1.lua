-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1295a46174e1 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 21, 100)
do
  if l_0_0 ~= nil then
    local l_0_1 = (string.find)(l_0_0, "\129;\026\164\006\000u", 1, true)
    if l_0_1 ~= nil then
      (pe.mmap_patch_va)(pevars.sigaddr + 21 + l_0_1 + 5, "��")
    end
  end
  return mp.INFECTED
end

