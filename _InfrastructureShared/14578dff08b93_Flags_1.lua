-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/14578dff08b93_Flags_1 

-- params : ...
-- function num : 0
if (((((hstrlog[2]).matched and not (hstrlog[3]).matched) or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (mp.getfilesize)() < 1000000) and ((hstrlog[1]).matched or 0 + 1 + 1 + 1 + 1 == 4) then
  return mp.INFECTED
end
return mp.CLEAN

