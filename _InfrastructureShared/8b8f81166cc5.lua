-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8b8f81166cc5 

-- params : ...
-- function num : 0
if (hstrlog[3]).hitcount >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

