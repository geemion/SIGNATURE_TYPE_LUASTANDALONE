-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/22e78f152b580_Flags_1 

-- params : ...
-- function num : 0
do
  if ((((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (hstrlog[6]).matched then
    local l_0_0 = 0 + 1 + 1 + 1 + 1 + 1 + 1
  end
  do
    if ((hstrlog[7]).matched and not (hstrlog[8]).matched) or (hstrlog[9]).matched then
      local l_0_1 = nil
    end
    -- DECOMPILER ERROR at PC56: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC60: Confused about usage of register: R1 in 'UnsetPending'

    if (l_0_1 >= 1 and 0 + 1 + 1 + 1 >= 2) or 0 + 1 + 1 + 1 >= 3 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

