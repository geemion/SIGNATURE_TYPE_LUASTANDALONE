-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_Obfuscator_ACV_deep_noapicall_limit 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:VirTool:Win32/Obfuscator.ACV!filter") and (mp.get_mpattribute)("HSTR:VirTool:Win32/Obfuscator.ACV!pointer") and (mp.get_mpattribute)("MpAPILimitReached") then
  (pe.set_peattribute)("deep_analysis", true)
  ;
  (pe.set_peattribute)("disable_apicall_limit", true)
  ;
  (pe.reemulate)()
end
return mp.CLEAN
