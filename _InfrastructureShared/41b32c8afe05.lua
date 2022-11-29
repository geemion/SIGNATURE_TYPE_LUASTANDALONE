-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41b32c8afe05 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched then
  local l_0_0 = (this_sigattrlog[2]).utf8p1
  if l_0_0 == nil and (string.len)(l_0_0) < 3 then
    return mp.CLEAN
  end
  l_0_0 = (string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_0))
  local l_0_1 = (string.match)(l_0_0, "(.-)[^\\]-[^\\%.]+$")
  if l_0_1 == nil and (string.len)(l_0_1) < 3 then
    return mp.CLEAN
  end
  local l_0_2 = {}
  l_0_2[(string.lower)((mp.ContextualExpandEnvironmentVariables)("%localappdata%\\microsoft\\windows\\"))] = true
  l_0_2[(string.lower)((mp.ContextualExpandEnvironmentVariables)("%system%\\"))] = true
  l_0_2[(string.lower)((mp.ContextualExpandEnvironmentVariables)("%system%\\config\\systemprofile\\appdata\\local\\microsoftwindows\\"))] = true
  if l_0_2[l_0_1] then
    (bm.add_threat_file)(l_0_0)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

