-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/23786cd54f7b 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:VirTool:Win32/Injector.gen!BM") and (mp.get_mpattribute)("HSTR:HasSEH") and (mp.get_mpattribute)("Lua:DealPlyFileName") then
  return mp.INFECTED
end
return mp.CLEAN

