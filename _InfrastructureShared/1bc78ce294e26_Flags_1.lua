-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1bc78ce294e26_Flags_1 

-- params : ...
-- function num : 0
do
  if ((((((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (hstrlog[5]).matched) and not (hstrlog[6]).matched) or (hstrlog[7]).matched then
    local l_0_0 = 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1
  end
  -- DECOMPILER ERROR at PC48: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC50: Confused about usage of register: R0 in 'UnsetPending'

  if ((mp.getfilesize)() < 500000 and l_0_0 >= 4) or l_0_0 >= 6 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

