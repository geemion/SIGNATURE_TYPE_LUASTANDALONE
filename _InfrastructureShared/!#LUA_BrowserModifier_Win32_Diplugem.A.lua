-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_BrowserModifier_Win32_Diplugem.A 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("HSTR:VirTool:Win32/Obfuscator!InstalleRex") or (mp.get_mpattribute)("HSTR:VirTool:Win32/Obfuscator!InstalleRex.B") or (mp.get_mpattribute)("HSTR:VirTool:Win32/Obfuscator!InstalleRex.C") or (mp.get_mpattribute)("HSTR:VirTool:Win32/Obfuscator!InstalleRex.D") then
    local l_0_0 = (string.lower)((mp.getfilename)())
    if (string.sub)(l_0_0, -4) == ".exe" and ((string.find)(l_0_0, "\\temp\\", 1, true) or (string.find)(l_0_0, "\\downloads\\", 1, true) or (string.match)(l_0_0, "\\all users\\application data\\{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}") or (string.match)(l_0_0, "\\programdata\\{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}")) then
      (mp.set_mpattribute)("PUA:Block:InstalleRex")
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

