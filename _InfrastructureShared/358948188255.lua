-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/358948188255 

-- params : ...
-- function num : 0
local l_0_1 = (string.find)((pe.mmap_va)(pevars.sigaddr, 128), "I��", 1, true)
do
  if l_0_1 == nil then
    local l_0_0 = 7
    l_0_0 = 4
  end
  -- DECOMPILER ERROR at PC29: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC35: Confused about usage of register: R1 in 'UnsetPending'

  ;
  (pe.mmap_patch_va)(pevars.sigaddr + l_0_1 + l_0_0, "��")
  return mp.INFECTED
end

