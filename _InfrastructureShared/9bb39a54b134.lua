-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9bb39a54b134 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 == nil or (string.len)(l_0_0) < 1 then
  return mp.CLEAN
end
if (string.find)(l_0_0, ".tmp\\", 1, true) or (string.find)(l_0_0, "\\temp\\", 1, true) then
  return mp.INFECTED
end
if (string.find)(l_0_0, "\\program files\\", 1, true) or (string.find)(l_0_0, "\\program files (x86)\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
