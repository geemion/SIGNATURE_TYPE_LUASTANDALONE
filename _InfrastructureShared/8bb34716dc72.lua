-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8bb34716dc72 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0:find("svchost.exe") then
  (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[1]).utf8p1), 2527504772)
  return mp.INFECTED
end
return mp.CLEAN

