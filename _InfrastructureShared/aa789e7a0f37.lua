-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/aa789e7a0f37 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if (mp.getfilesize)() > 10240000 then
  return mp.CLEAN
end
return mp.INFECTED

