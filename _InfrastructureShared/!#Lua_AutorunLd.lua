-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_AutorunLd 

-- params : ...
-- function num : 0
if (mp.GetResmgrBasePlugin)() == "AutorunInf" then
  return mp.INFECTED
end
return mp.CLEAN

