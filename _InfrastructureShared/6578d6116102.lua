-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6578d6116102 

-- params : ...
-- function num : 0
if peattributes.isexe == true and (mp.get_mpattribute)("HSTR:Trojan:Win32/IsDelphi") then
  return mp.INFECTED
end
return mp.CLEAN

