-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/13e78ea4c11cc 

-- params : ...
-- function num : 0
if (hstrlog[2]).hitcount == 0 and (hstrlog[3]).hitcount == 0 then
  return mp.CLEAN
end
if (hstrlog[4]).hitcount == 0 and (hstrlog[5]).hitcount == 0 and (hstrlog[6]).hitcount == 0 then
  return mp.CLEAN
end
return mp.INFECTED

