-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2f78a3b89fb8 

-- params : ...
-- function num : 0
if (mp.GetHSTRCallerId)() ~= mp.HSTR_CALLER_SMS then
  return mp.CLEAN
end
return mp.INFECTED

