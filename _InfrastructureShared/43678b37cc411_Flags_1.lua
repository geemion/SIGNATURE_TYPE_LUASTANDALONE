-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/43678b37cc411_Flags_1 

-- params : ...
-- function num : 0
do
  if ((((((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (hstrlog[5]).matched) and not (hstrlog[6]).matched) or (hstrlog[7]).matched then
    local l_0_0 = 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1
  end
  -- DECOMPILER ERROR at PC92: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC96: Confused about usage of register: R0 in 'UnsetPending'

  if (((((((not (hstrlog[12]).matched or (hstrlog[13]).matched) and not (hstrlog[14]).matched) or (hstrlog[8]).matched) and not (hstrlog[9]).matched) or (hstrlog[10]).matched) and not (hstrlog[11]).matched) or (mp.getfilesize)() < 300000) and ((l_0_0 == 7 and 0 + 1 + 1 + 1 == 3) or l_0_0 ~= 7 or 0 + 1 + 1 + 1 + 1 >= 1) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

