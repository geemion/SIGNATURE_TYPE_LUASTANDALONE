-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_VBS_CrypterRevB64_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 15000 then
  return mp.CLEAN
end
if l_0_0 > 60000 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
l_0_1 = (string.lower)(l_0_1)
local l_0_2 = l_0_1:match("strreverse%(ss%(0%)%).-\r\n(.-)%s-=%s-base64decode%(%w-%)")
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = l_0_1:match("execute%s-(%w-)\'")
if l_0_3 == nil then
  return mp.CLEAN
end
if l_0_2 ~= l_0_3 then
  return mp.CLEAN
end
return mp.INFECTED

