-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b3135bcf57 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((sigattr_head[1]).utf8p2)
if (string.find)(l_0_0, "/x", 1, true) and (string.find)(l_0_0, "/s", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

