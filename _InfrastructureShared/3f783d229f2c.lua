-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3f783d229f2c 

-- params : ...
-- function num : 0
if peattributes.no_security == true and (mp.get_mpattribute)("NID:Win32/Remcos.PI!Pra1") then
  return mp.INFECTED
end
return mp.CLEAN

