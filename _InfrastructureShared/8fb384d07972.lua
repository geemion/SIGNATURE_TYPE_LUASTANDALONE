-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8fb384d07972 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 == nil or (string.len)(l_0_0) < 1 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "firefox", 1, true) or (string.find)(l_0_0, "backup", 1, true) or (string.find)(l_0_0, "sync", 1, true) or (string.find)(l_0_0, "waterfox", 1, true) then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\appdata\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
