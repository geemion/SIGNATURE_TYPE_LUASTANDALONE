-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4167834282037_Flags_1 

-- params : ...
-- function num : 0
do
  if not (hstrlog[1]).matched and not (hstrlog[2]).matched and not (hstrlog[3]).matched and not (hstrlog[4]).matched and not (hstrlog[5]).matched and not (hstrlog[6]).matched and not (hstrlog[7]).matched and not (hstrlog[8]).matched and not (hstrlog[9]).matched and not (hstrlog[10]).matched then
    local l_0_0 = (hstrlog[11]).matched
  end
  do
    if not (hstrlog[12]).matched and not (hstrlog[13]).matched and not (hstrlog[14]).matched and not (hstrlog[15]).matched and not (hstrlog[16]).matched and not (hstrlog[17]).matched and not (hstrlog[18]).matched and not (hstrlog[19]).matched and not (hstrlog[20]).matched and not (hstrlog[21]).matched and not (hstrlog[22]).matched and not (hstrlog[23]).matched and not (hstrlog[24]).matched and not (hstrlog[25]).matched and not (hstrlog[26]).matched and not (hstrlog[27]).matched then
      local l_0_1 = nil
    end
    -- DECOMPILER ERROR at PC137: Confused about usage of register: R0 in 'UnsetPending'

    do
      if not l_0_1 or (hstrlog[28]).matched then
        local l_0_2 = nil
      end
      if 0 + 2 + 1 >= 3 then
        return mp.INFECTED
      end
      -- DECOMPILER ERROR at PC148: Confused about usage of register: R2 in 'UnsetPending'

      if 0 + 2 + 1 >= 2 then
        return mp.SUSPICIOUS
      end
      return mp.CLEAN
    end
  end
end

