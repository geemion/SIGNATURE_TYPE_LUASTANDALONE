-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a95e4586b86 

-- params : ...
-- function num : 0
if (pe.isdynamic_va)(pevars.sigaddr) then
  local l_0_0 = (pe.get_regval)(pe.REG_EAX) + 8
  local l_0_1 = (pe.mmap_va)(l_0_0, 4)
  local l_0_2 = (mp.readu_u32)(l_0_1, 1)
  if l_0_2 == 1334098973 then
    (mp.set_mpattribute)("PEBMPAT:AntiEmuTimeStampREAD")
  end
end
do
  return mp.CLEAN
end

