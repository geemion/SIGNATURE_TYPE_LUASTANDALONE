-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/696120d7b92c 

-- params : ...
-- function num : 0
if peattributes.no_security == true and (mp.get_mpattribute)("NID:Trojan:Win32/CryptInject.K!MSR") then
  return mp.INFECTED
end
return mp.CLEAN

