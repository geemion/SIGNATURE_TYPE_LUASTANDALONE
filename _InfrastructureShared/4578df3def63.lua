-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4578df3def63 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
if not peattributes.amd64_image then
  return mp.CLEAN
end
if not peattributes.hasexports then
  return mp.CLEAN
end
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("do_exhaustivehstr_64bit_rescan") then
  (mp.set_mpattribute)("do_exhaustivehstr_64bit_rescan")
end
return mp.INFECTED

