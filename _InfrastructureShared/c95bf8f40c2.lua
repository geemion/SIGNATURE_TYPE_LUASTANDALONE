-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c95bf8f40c2 

-- params : ...
-- function num : 0
do
  if (pe.isdynamic_va)(pevars.sigaddr) then
    local l_0_0 = (pe.get_regval)(pe.REG_EAX)
    if l_0_0 == 1247748109 then
      (mp.set_mpattribute)("PEBMPAT:AntiEmuVirtualProtectLayout")
      ;
      (pe.set_regval)(pe.REG_EAX, 3047219186)
    end
  end
  return mp.CLEAN
end

