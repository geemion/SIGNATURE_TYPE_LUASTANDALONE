-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_InstallerName_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0 == nil and #l_0_0 < 5 then
  return mp.CLEAN
end
if l_0_0:find("setup", 1, true) or l_0_0:find("install", 1, true) or l_0_0:find("x32", 1, true) or l_0_0:find("x64", 1, true) then
  (mp.set_mpattribute)("Lua:SetupName")
end
return mp.CLEAN

