-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1757832fe9410 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.match)(l_0_0, "appdata\\local\\temp\\bk[%a%d]+.tmp\\p[%a%d]+.exe") then
  (mp.set_mpattribute)("HSTR:Win32/PCHunter.B")
end
return mp.INFECTED

