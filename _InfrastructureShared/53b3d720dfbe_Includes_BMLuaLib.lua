-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/53b3d720dfbe_Includes_BMLuaLib 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[1]).utf8p1
local l_0_1 = {}
l_0_1[".exe"] = true
l_0_1[".dll"] = true
local l_0_2 = l_0_0:sub(-4)
if not l_0_1[l_0_2] then
  return mp.CLEAN
end
if (sysio.IsFileExists)(l_0_0) and (mp.IsKnownFriendlyFile)(l_0_0, false, false) == false then
  (bm.add_related_file)(l_0_0)
  local l_0_3 = {}
  ;
  (table.insert)(l_0_3, l_0_0)
  ;
  (MpCommon.SetPersistContextNoPath)("ServiceBinHijack", l_0_3, 3600)
  return mp.INFECTED
end
do
  return mp.CLEAN
end

