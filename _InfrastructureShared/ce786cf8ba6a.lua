-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ce786cf8ba6a 

-- params : ...
-- function num : 0
if peattributes.ismsil and mp.HSTR_WEIGHT >= 3 and (mp.get_mpattribute)("SIGA:FileOperationDelete.S001") then
  return mp.INFECTED
end
return mp.LOWFI

