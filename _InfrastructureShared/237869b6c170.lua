-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/237869b6c170 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:Trojan:Win32/ChineseKeyboardCheck!MTB") then
  return mp.INFECTED
end
return mp.CLEAN

