-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1c78d8a349f8 

-- params : ...
-- function num : 0
local l_0_0 = 0
if (hstrlog[1]).matched then
  l_0_0 = (hstrlog[1]).hitcount
end
if l_0_0 >= 3 then
  return mp.INFECTED
end
return mp.CLEAN
