-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_SingleFileInGZip 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
;
(mp.readprotection)(false)
if l_0_0 < 256 then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 1) ~= 35615 then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 2) ~= 2187 then
  return mp.CLEAN
end
local l_0_1 = (mp.readu_u16)(headerpage, 10)
if l_0_1 > 31245 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:SingleFileInGZip")
return mp.CLEAN
