-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6578280c5fbf 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "wzunzip%.exe") or (string.find)(l_0_0, "wzcline40%-64%.exe") or (string.find)(l_0_0, "wzcline40%-32%.exe") then
  return mp.CLEAN
end
return mp.INFECTED

