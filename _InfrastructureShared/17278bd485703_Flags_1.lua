-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/17278bd485703_Flags_1 

-- params : ...
-- function num : 0
do
  if ((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched then
    local l_0_0 = 0 + 1 + 1 + 1
  end
  do
    if ((not (hstrlog[5]).matched or (hstrlog[6]).matched) and not (hstrlog[7]).matched) or (hstrlog[8]).matched then
      local l_0_1 = nil
    end
    -- DECOMPILER ERROR at PC49: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC63: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC67: Unhandled construct in 'MakeBoolean' P3

    if ((mp.getfilesize)() < 200000 and l_0_1 >= 1) or not (hstrlog[4]).matched or (hstrlog[4]).matched and 0 + 1 + 1 + 1 + 1 == 4 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

