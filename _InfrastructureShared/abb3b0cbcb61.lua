-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/abb3b0cbcb61 

-- params : ...
-- function num : 0
local l_0_0 = ((string.lower)((this_sigattrlog[2]).utf8p2)):match("|app=(.-)|")
if l_0_0 ~= nil then
  l_0_0 = (mp.ContextualExpandEnvironmentVariables)(l_0_0)
  if l_0_0 ~= nil and (sysio.IsFileExists)(l_0_0) then
    (mp.ReportLowfi)(l_0_0, 2240217800)
  end
end
return mp.INFECTED

