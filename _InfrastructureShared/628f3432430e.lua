-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/628f3432430e 

-- params : ...
-- function num : 0
if (hstrlog[4]).matched and (hstrlog[4]).hitcount > 5 then
  return mp.INFECTED
end
return mp.LOWFI

