-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25b3b8faf9d2 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["omadmclient.exe"] = true
l_0_0["provtool.exe"] = true
local l_0_1 = (string.lower)((string.match)((bm.get_imagepath)(), "\\([^\\]+)$"))
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
if l_0_0[l_0_1] == true then
  return mp.CLEAN
end
return mp.INFECTED

