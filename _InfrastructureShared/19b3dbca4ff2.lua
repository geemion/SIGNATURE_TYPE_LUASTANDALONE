-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/19b3dbca4ff2 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((string.sub)((bm.get_imagepath)(), -17))
if l_0_0 == "\\waworkerhost.exe" then
  return mp.CLEAN
end
local l_0_1 = nil
if (this_sigattrlog[1]).matched then
  l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p2)
end
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
if (string.find)(l_0_1, "%userprofile%\\appdata\\local", 1, true) or (string.find)(l_0_1, "%userprofile%\\appdata\\roaming", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

