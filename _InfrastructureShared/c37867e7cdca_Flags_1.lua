-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c37867e7cdca_Flags_1 

-- params : ...
-- function num : 0
if (((hstrlog[1]).matched and not (hstrlog[2]).matched) or (mp.getfilesize)() < 3000000) and 0 + 1 + 1 >= 1 then
  return mp.INFECTED
end
return mp.CLEAN

