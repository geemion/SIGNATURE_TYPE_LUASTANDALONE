-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/14178b3bbe53f 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.sub)(l_0_0, -9) == "setup.exe" then
  (mp.set_mpattribute)("HSTR:Win32/BrowseFox.V!Setup")
end
;
(mp.set_mpattribute)("PUA:Block:BrowseFox")
return mp.INFECTED

