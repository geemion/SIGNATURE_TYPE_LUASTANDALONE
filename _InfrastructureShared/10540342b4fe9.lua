-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/10540342b4fe9 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 50000 and (mp.getfilesize)() < 1000000 and not (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.INFECTED
end
return mp.CLEAN

