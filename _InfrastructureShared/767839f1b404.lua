-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/767839f1b404 

-- params : ...
-- function num : 0
if ((not (hstrlog[4]).matched or (hstrlog[5]).matched) and not (hstrlog[6]).matched) or 0 + 1 + 1 + 1 >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

