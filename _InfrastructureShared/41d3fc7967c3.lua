-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41d3fc7967c3 

-- params : ...
-- function num : 0
if (hstrlog[1]).hitcount > 5 then
  return mp.INFECTED
end
return mp.CLEAN

