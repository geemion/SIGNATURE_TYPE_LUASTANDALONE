-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d37821021622 

-- params : ...
-- function num : 0
if (mp.getfilesize)() >= 1100000 and (mp.getfilesize)() <= 1400000 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

