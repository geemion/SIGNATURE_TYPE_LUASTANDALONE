-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/51781fe22d8b 

-- params : ...
-- function num : 0
if (hstrlog[1]).hitcount + (hstrlog[2]).hitcount + (hstrlog[3]).hitcount + (hstrlog[4]).hitcount >= 5 then
  return mp.INFECTED
end
return mp.CLEAN

