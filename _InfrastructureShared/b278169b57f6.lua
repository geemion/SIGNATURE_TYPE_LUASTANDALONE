-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b278169b57f6 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if peattributes.ismsil then
  return mp.INFECTED
end
return mp.CLEAN

