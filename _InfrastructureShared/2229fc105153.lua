-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2229fc105153 

-- params : ...
-- function num : 0
if (string.find)((mp.getfilename)(), "(Rtf0000)", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

