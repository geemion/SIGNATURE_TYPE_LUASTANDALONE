-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f9785c92505e 

-- params : ...
-- function num : 0
if ((not (hstrlog[2]).matched and not (hstrlog[3]).matched) or (not (hstrlog[5]).matched and not (hstrlog[6]).matched) or not (hstrlog[1]).matched or (hstrlog[4]).matched) then
  return mp.INFECTED
end
return mp.CLEAN

