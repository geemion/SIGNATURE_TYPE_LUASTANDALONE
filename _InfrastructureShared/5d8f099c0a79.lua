-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5d8f099c0a79 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched and (hstrlog[1]).hitcount > 2 then
  return mp.INFECTED
end
if (hstrlog[2]).matched and (hstrlog[2]).hitcount > 2 then
  return mp.INFECTED
end
if (hstrlog[2]).matched and (hstrlog[1]).matched then
  return mp.INFECTED
end
return mp.LOWFI

