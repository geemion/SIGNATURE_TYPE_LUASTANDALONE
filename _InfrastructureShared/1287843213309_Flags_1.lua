-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1287843213309_Flags_1 

-- params : ...
-- function num : 0
if (((((((((((((not (hstrlog[3]).matched or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (hstrlog[6]).matched) and not (hstrlog[7]).matched) or (hstrlog[1]).matched) and not (hstrlog[2]).matched) or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (hstrlog[5]).matched) and not (hstrlog[6]).matched) or (hstrlog[7]).matched) and not (hstrlog[8]).matched) or (mp.getfilesize)() < 1500000) and (0 + 1 + 1 + 1 + 1 + 1 >= 1 or 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 >= 2) then
  return mp.INFECTED
end
return mp.CLEAN
