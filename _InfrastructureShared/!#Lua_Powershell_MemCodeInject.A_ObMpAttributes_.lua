-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_Powershell_MemCodeInject.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
do
  if ((((((((((mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!dllcheck") and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!MachineType")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!MagicType")) and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!VirtualAlloc")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!memcpy")) and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!CreateThread")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!IsWow64Process")) and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!WriteShellCode")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!GetProcAddressSCx64")) and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!GetProcAddressSCx86")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!Invoke") then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5 = 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1
  end
  -- DECOMPILER ERROR at PC78: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 >= 4 then
    (mp.set_mpattribute)("Lua:Powershell/MemCodeInject.A:4")
  end
  -- DECOMPILER ERROR at PC84: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 >= 6 then
    (mp.set_mpattribute)("Lua:Powershell/MemCodeInject.A:6")
  end
  -- DECOMPILER ERROR at PC90: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 >= 8 then
    (mp.set_mpattribute)("Lua:Powershell/MemCodeInject.A:8")
  end
  -- DECOMPILER ERROR at PC96: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 >= 10 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

