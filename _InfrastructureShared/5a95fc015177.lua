-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5a95fc015177 

-- params : ...
-- function num : 0
local l_0_0 = 19
if (string.byte)((pe.mmap_va)(pevars.sigaddr + 13, 1)) ~= 232 then
  l_0_0 = 20
end
local l_0_1 = (pe.mmap_va)(pevars.sigaddr + l_0_0, 16)
if (string.find)(l_0_1, "��", 1, true) == nil and (string.find)(l_0_1, "��", 1, true) == nil and (string.find)(l_0_1, "��", 1, true) == nil and (string.find)(l_0_1, "��", 1, true) == nil and (string.find)(l_0_1, "��", 1, true) == nil and (string.find)(l_0_1, "\128,", 1, true) ~= nil then
  l_0_0 = l_0_0 - 1
  -- DECOMPILER ERROR at PC81: Confused about usage of register: R2 in 'UnsetPending'

  local l_0_2, l_0_3 = (string.find)(l_0_1, "\128,", 1, true) + 1
end
do
  -- DECOMPILER ERROR at PC83: Confused about usage of register: R2 in 'UnsetPending'

  for l_0_7 = 1, l_0_2 - 1 do
    local l_0_4 = nil
    -- DECOMPILER ERROR at PC91: Confused about usage of register: R6 in 'UnsetPending'

    ;
    (pe.mmap_patch_va)(pevars.sigaddr + (l_0_0) + 1 - 1, "\144")
  end
  return mp.INFECTED
end

