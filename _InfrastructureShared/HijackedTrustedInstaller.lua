-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/HijackedTrustedInstaller 

-- params : ...
-- function num : 0
if not (Remediation.Threat).Active then
  return 
end
local l_0_0 = (sysio.RegOpenKey)("hklm\\system\\currentcontrolset\\services\\trustedinstaller")
if l_0_0 then
  (sysio.SetRegValueAsStringExpand)(l_0_0, "ImagePath", "%SystemRoot%\\servicing\\TrustedInstaller.exe")
end

