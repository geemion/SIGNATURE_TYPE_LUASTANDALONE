-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b678cb38df59_Flags_1 

-- params : ...
-- function num : 0
if (((((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[5]).matched) or (hstrlog[6]).matched) and not (hstrlog[7]).matched) or (mp.getfilesize)() < 10000) and (hstrlog[4]).matched and (hstrlog[3]).matched and 0 + 1 + 1 == 2 and 0 + 1 + 1 + 1 == 3 then
  return mp.INFECTED
end
return mp.CLEAN

