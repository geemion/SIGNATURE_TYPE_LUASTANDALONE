-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/edb3648784b2_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 200000000 then
  return mp.CLEAN
end
local l_0_0 = nil
if (this_sigattrlog[10]).matched and (this_sigattrlog[10]).utf8p1 ~= nil then
  l_0_0 = (string.lower)((this_sigattrlog[10]).utf8p1)
end
if l_0_0 ~= nil then
  l_0_0 = (mp.ContextualExpandEnvironmentVariables)(l_0_0)
  if (sysio.IsFileExists)(l_0_0) and not (mp.IsKnownFriendlyFile)(l_0_0, true, false) then
    (bm.add_related_file)(l_0_0)
    AddResearchData((this_sigattrlog[10]).ppid, true)
    return mp.INFECTED
  end
end
return mp.CLEAN

