-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25b36a253424 

-- params : ...
-- function num : 0
local l_0_0 = (mp.ContextualExpandEnvironmentVariables)("%windir%\\system32\\LogonUI.exe")
local l_0_1 = (sysio.GetProcessFromFileName)(l_0_0)
if l_0_1 ~= nil and #l_0_1 >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

