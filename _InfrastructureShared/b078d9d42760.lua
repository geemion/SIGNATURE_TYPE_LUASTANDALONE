-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b078d9d42760 

-- params : ...
-- function num : 0
if peattributes.ismsil and (mp.get_mpattribute)("pea_no_security") and (mp.get_mpattribute)("SIGATTR:MSIL/LoadPEBase64.J") then
  return mp.INFECTED
end
return mp.CLEAN

