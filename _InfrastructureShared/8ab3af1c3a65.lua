-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8ab3af1c3a65 

-- params : ...
-- function num : 0
if (string.match)((mp.utf16to8)((this_sigattrlog[1]).wp1), "\\%l%l%l%l%l%l.exe") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

