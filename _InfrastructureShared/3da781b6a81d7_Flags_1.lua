-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3da781b6a81d7_Flags_1 

-- params : ...
-- function num : 0
do
  if ((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (hstrlog[4]).matched then
    local l_0_0 = 0 + 1 + 1 + 1 + 1
  end
  do
    if ((((((((hstrlog[5]).matched and not (hstrlog[6]).matched) or (hstrlog[7]).matched) and not (hstrlog[8]).matched) or (hstrlog[9]).matched) and not (hstrlog[10]).matched) or (hstrlog[11]).matched) and not (hstrlog[12]).matched) or (hstrlog[13]).matched then
      local l_0_1 = nil
    end
    -- DECOMPILER ERROR at PC85: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC89: Confused about usage of register: R1 in 'UnsetPending'

    if (l_0_1 >= 1 and 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 >= 3) or 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 == 9 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

