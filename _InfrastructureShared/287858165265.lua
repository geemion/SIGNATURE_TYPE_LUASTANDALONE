-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/287858165265 

-- params : ...
-- function num : 0
if peattributes.ismsil and (mp.get_mpattribute)("HSTR:MSIL/Confuser") then
  return mp.INFECTED
end
return mp.CLEAN

