-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3f478fe4ad5cc_Flags_1 

-- params : ...
-- function num : 0
do
  if ((((((((((((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (hstrlog[6]).matched) and not (hstrlog[7]).matched) or (hstrlog[8]).matched) and not (hstrlog[9]).matched) or (hstrlog[10]).matched) and not (hstrlog[11]).matched) or (hstrlog[12]).matched) and not (hstrlog[13]).matched) or (hstrlog[14]).matched then
    local l_0_0 = 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1
  end
  -- DECOMPILER ERROR at PC95: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC97: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC101: Unhandled construct in 'MakeBoolean' P3

  if ((mp.getfilesize)() < 500000 and (hstrlog[1]).matched) or l_0_0 >= 5 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

