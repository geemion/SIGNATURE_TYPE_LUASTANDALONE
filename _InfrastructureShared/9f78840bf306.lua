-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9f78840bf306 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_isexe") and peattributes.no_security == true and (mp.getfilesize)() < 150000 then
  return mp.INFECTED
end
return mp.CLEAN

