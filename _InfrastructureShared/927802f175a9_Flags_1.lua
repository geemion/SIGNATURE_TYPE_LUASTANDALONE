-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/927802f175a9_Flags_1 

-- params : ...
-- function num : 0
if (((((hstrlog[3]).matched and not (hstrlog[4]).matched) or (hstrlog[5]).matched) and not (hstrlog[6]).matched) or (mp.getfilesize)() < 400000) and (hstrlog[1]).VA == 0 + pehdr.ImageBase and (hstrlog[2]).matched and 0 + 1 + 1 + 1 + 1 >= 1 then
  return mp.INFECTED
end
return mp.CLEAN

