-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/599596dbca98 

-- params : ...
-- function num : 0
local l_0_0 = (string.find)((pe.mmap_va)(pevars.sigaddr, 32), "\232\000\000\000\000", 1, true) + 5 - 1
local l_0_1 = (pe.mmap_va)(pevars.sigaddr + l_0_0, 16)
do
  if (string.find)(l_0_1, "\128,", 1, true) == nil then
    local l_0_2 = (string.find)(l_0_1, "\128\004", 1, true)
  end
  -- DECOMPILER ERROR at PC39: Confused about usage of register: R2 in 'UnsetPending'

  for l_0_6 = 1, l_0_2 - 1 do
    local l_0_3 = nil
    -- DECOMPILER ERROR at PC47: Confused about usage of register: R6 in 'UnsetPending'

    ;
    (pe.mmap_patch_va)(pevars.sigaddr + l_0_0 + 1 - 1, "\144")
  end
  return mp.INFECTED
end

