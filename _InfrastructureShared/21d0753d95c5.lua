-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/21d0753d95c5 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if (string.find)((string.lower)(l_0_0), ".asar$") ~= nil then
  (mp.set_mpattribute)("MpIsExhaustiveScriptScan")
  return mp.INFECTED
end
return mp.CLEAN

