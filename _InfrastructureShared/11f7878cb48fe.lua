-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/11f7878cb48fe 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_isexe") and peattributes.no_security == true and (mp.getfilesize)() < 300000 then
  return mp.INFECTED
end
return mp.CLEAN

