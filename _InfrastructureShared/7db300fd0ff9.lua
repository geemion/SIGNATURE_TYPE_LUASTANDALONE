-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7db300fd0ff9 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
local l_0_1 = l_0_0:match("(%w+%.exe)$")
if l_0_0 == nil or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%WINDIR%\\SYSTEM32"))
local l_0_3 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%WINDIR%\\SYSWOW64"))
if ((l_0_2 and l_0_0:find(l_0_2, 1, true)) or not l_0_3 or l_0_0:find(l_0_3, 1, true)) and l_0_1 == "rundll32.exe" then
  if (this_sigattrlog[4]).matched then
    (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1), 2471941984)
  else
    ;
    (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1), 1925377452)
  end
  return mp.INFECTED
end
return mp.CLEAN

