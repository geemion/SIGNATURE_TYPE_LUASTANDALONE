-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_NSISWithFileZillaCert_ObMpAttributes_ 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("MpIsExhaustiveScriptScan")
if (mp.get_mpattribute)("MIXED:PUA:FileZilla") then
  (mp.UfsSetMetadataBool)("LUAUFS:NSISFileZillaBndlCert", true)
else
  ;
  (mp.UfsSetMetadataBool)("LUAUFS:NSISHasFileZillaCert", true)
end
return mp.INFECTED

