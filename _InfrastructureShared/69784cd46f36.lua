-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69784cd46f36 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("NID:Win32/HiveCrypt.PB!MTB") then
  return mp.INFECTED
end
return mp.CLEAN

