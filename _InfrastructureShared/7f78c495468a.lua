-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7f78c495468a 

-- params : ...
-- function num : 0
if (peattributes.isexe == true and peattributes.no_security == true and peattributes.ismsil == false and (mp.getfilesize)() < 900000 and (mp.getfilesize)() > 620000) or (mp.getfilesize)() < 307200 and (mp.getfilesize)() > 204800 then
  return mp.INFECTED
end
return mp.CLEAN

