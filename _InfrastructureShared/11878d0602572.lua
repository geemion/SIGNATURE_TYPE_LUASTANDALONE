-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/11878d0602572 

-- params : ...
-- function num : 0
if (hstrlog[2]).hitcount == 0 and (hstrlog[3]).hitcount == 0 and (hstrlog[4]).hitcount == 0 and (hstrlog[5]).hitcount == 0 then
  return mp.CLEAN
end
if (hstrlog[6]).hitcount == 0 and (hstrlog[7]).hitcount == 0 and (hstrlog[8]).hitcount == 0 and (hstrlog[9]).hitcount == 0 then
  return mp.CLEAN
end
if (hstrlog[10]).hitcount == 0 and (hstrlog[11]).hitcount == 0 and (hstrlog[12]).hitcount == 0 then
  return mp.CLEAN
end
if (hstrlog[13]).hitcount == 0 and (hstrlog[14]).hitcount == 0 then
  return mp.CLEAN
end
return mp.INFECTED

