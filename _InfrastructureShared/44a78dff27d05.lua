-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/44a78dff27d05 

-- params : ...
-- function num : 0
do
  if ((((((((((((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (hstrlog[6]).matched) and not (hstrlog[7]).matched) or (hstrlog[8]).matched) and not (hstrlog[9]).matched) or (hstrlog[10]).matched) and not (hstrlog[11]).matched) or (hstrlog[12]).matched) and not (hstrlog[13]).matched) or (hstrlog[14]).matched then
    local l_0_0, l_0_1, l_0_2 = 0 + (hstrlog[1]).hitcount + (hstrlog[2]).hitcount + (hstrlog[3]).hitcount + (hstrlog[4]).hitcount + 1 + (hstrlog[6]).hitcount + (hstrlog[7]).hitcount + (hstrlog[8]).hitcount + (hstrlog[9]).hitcount + (hstrlog[10]).hitcount + (hstrlog[11]).hitcount + (hstrlog[12]).hitcount + (hstrlog[13]).hitcount + (hstrlog[14]).hitcount
  end
  -- DECOMPILER ERROR at PC124: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC130: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 >= 6 or mp.HSTR_WEIGHT >= 4 and l_0_0 > 4 then
    if not (mp.get_mpattribute)("do_exhaustivehstr_rescan") then
      (mp.set_mpattribute)("do_exhaustivehstr_rescan")
    end
    ;
    (mp.set_mpattribute)("MpRequestSMSM")
    return mp.INFECTED
  end
  return mp.CLEAN
end

