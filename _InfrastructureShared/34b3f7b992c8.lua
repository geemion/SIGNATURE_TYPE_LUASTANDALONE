-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/34b3f7b992c8 

-- params : ...
-- function num : 0
if (string.match)((this_sigattrlog[1]).utf8p1, "\\%l%l%l%l%l%l%d%.exe") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

