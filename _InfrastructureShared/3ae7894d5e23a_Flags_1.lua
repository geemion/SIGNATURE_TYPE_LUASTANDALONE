-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3ae7894d5e23a_Flags_1 

-- params : ...
-- function num : 0
do
  if ((((((((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (hstrlog[6]).matched) and not (hstrlog[7]).matched) or (hstrlog[8]).matched) and not (hstrlog[9]).matched) or (hstrlog[10]).matched then
    local l_0_0 = 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1
  end
  -- DECOMPILER ERROR at PC66: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC68: Confused about usage of register: R0 in 'UnsetPending'

  if ((mp.getfilesize)() < 500000 and l_0_0 >= 2) or l_0_0 >= 3 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

