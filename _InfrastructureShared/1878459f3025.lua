-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1878459f3025 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("RPF:SmartAssembly") and (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
    local l_0_0 = (pe.get_versioninfo)()
    if l_0_0 ~= nil and (string.find)((string.lower)(l_0_0.InternalName), "luckyleap", 1, true) then
      (mp.set_mpattribute)("Trojan:Win32/LuckyLeap")
    end
  end
  return mp.CLEAN
end

