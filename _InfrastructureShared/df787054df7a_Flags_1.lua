-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/df787054df7a_Flags_1 

-- params : ...
-- function num : 0
if (((((((((((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (hstrlog[6]).matched) and not (hstrlog[7]).matched) or (hstrlog[8]).matched) and not (hstrlog[9]).matched) or (hstrlog[10]).matched) and not (hstrlog[11]).matched) or (mp.getfilesize)() < 500000) and (0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 >= 4 or (hstrlog[7]).matched) then
  return mp.INFECTED
end
return mp.CLEAN

