-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1d78f60ff271 

-- params : ...
-- function num : 0
if pehdr.Machine == 34404 and pehdr.Subsystem == 1 and peattributes.isdriver and (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") and (mp.getfilesize)() < 100000 then
  return mp.INFECTED
end
return mp.CLEAN

