-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/33d789d1f5c66_Flags_1 

-- params : ...
-- function num : 0
do
  if ((not (hstrlog[2]).matched or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (hstrlog[5]).matched then
    local l_0_0 = 0 + 1 + 1 + 1 + 1
  end
  do
    if ((((((((((((((((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (hstrlog[5]).matched) and not (hstrlog[6]).matched) or (hstrlog[7]).matched) and not (hstrlog[8]).matched) or (hstrlog[9]).matched) and not (hstrlog[10]).matched) or (hstrlog[11]).matched) and not (hstrlog[12]).matched) or (hstrlog[13]).matched) and not (hstrlog[14]).matched) or (hstrlog[15]).matched) and not (hstrlog[16]).matched) or (hstrlog[17]).matched then
      local l_0_1 = nil
    end
    -- DECOMPILER ERROR at PC133: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC142: Confused about usage of register: R1 in 'UnsetPending'

    if (hstrlog[1]).matched or l_0_1 >= 2 or 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 >= 4 or (mp.getfilesize)() <= 3000000 and 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 >= 2 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

