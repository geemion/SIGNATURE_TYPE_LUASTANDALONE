-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1561827ef40e 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:SkypeSneak") and (mp.get_mpattribute)("HSTR:Win32/GenSpy") then
  return mp.INFECTED
end
return mp.CLEAN

