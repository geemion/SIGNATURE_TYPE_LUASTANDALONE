-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/717bfc8b00558 

-- params : ...
-- function num : 0
do
  if (hstrlog[1]).matched and (hstrlog[2]).matched and (hstrlog[3]).matched and (hstrlog[4]).matched and (hstrlog[5]).matched and (hstrlog[6]).matched then
    local l_0_0 = (hstrlog[7]).matched
  end
  do
    if (((hstrlog[8]).matched or (hstrlog[9]).matched or (hstrlog[10]).matched or (hstrlog[11]).matched or (hstrlog[12]).matched or (hstrlog[13]).matched or (hstrlog[14]).matched or (hstrlog[15]).matched or (hstrlog[16]).matched or ((hstrlog[17]).matched and (hstrlog[18]).matched and (hstrlog[19]).matched) or (hstrlog[20]).matched or (hstrlog[21]).matched or (hstrlog[22]).matched or (hstrlog[23]).matched or (hstrlog[24]).matched or ((hstrlog[25]).matched and (hstrlog[26]).matched) or ((hstrlog[27]).matched and (hstrlog[28]).matched) or not (hstrlog[29]).matched)) then
      local l_0_1 = nil
    end
    -- DECOMPILER ERROR at PC146: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 and (hstrlog[30]).matched then
      (mp.changedetectionname)(805306383)
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

