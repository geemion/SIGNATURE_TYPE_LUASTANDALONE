-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c27808f7dc47 

-- params : ...
-- function num : 0
if (mp.GetHSTRCallerId)() ~= mp.HSTR_CALLER_SMS then
  return mp.CLEAN
end
if (mp.GetSMSProcArchitecture)() ~= mp.SMS_PROC_ARCH_X32 then
  return mp.CLEAN
end
return mp.INFECTED

