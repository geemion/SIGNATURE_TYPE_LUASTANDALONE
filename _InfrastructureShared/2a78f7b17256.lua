-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2a78f7b17256 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:VirTool:Win32/Injector.gen!BR") and peattributes.checks_if_debugged_undocumented then
  return mp.INFECTED
end
return mp.CLEAN

