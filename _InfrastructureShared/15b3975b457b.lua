-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b3975b457b 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(bm.get_connection_string)
if l_0_0 and l_0_1:match("DestPort=4242;") then
  return mp.CLEAN
end
return mp.INFECTED

