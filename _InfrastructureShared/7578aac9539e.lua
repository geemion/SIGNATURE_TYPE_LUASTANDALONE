-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7578aac9539e 

-- params : ...
-- function num : 0
if (hstrlog[1]).hitcount >= 3 and ((hstrlog[2]).hitcount >= 4 or (hstrlog[3]).hitcount >= 4) then
  return mp.INFECTED
end
return mp.LOWFI

