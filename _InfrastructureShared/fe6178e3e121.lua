-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/fe6178e3e121 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("NID:Adware:Win32/Linkury.A1") then
  return mp.INFECTED
end
return mp.CLEAN

