-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2e78fc785ecf 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
return mp.INFECTED

