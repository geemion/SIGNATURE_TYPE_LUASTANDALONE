-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_VBInArchiveWithSameNames 

-- params : ...
-- function num : 0
if peattributes.isvbnative ~= true then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6 = (string.find)(l_0_0, "part00[0-9]+:(.+)%.(.+)%)%-%>(.+)%.(.+)$")
local l_0_7 = "|ace|arj|iso|gz|r14|rar|zip|"
if l_0_7:find("|" .. l_0_4 .. "|") == nil then
  return mp.CLEAN
end
local l_0_8 = "|com|exe|scr|"
if l_0_8:find("|" .. l_0_6 .. "|") == nil then
  return mp.CLEAN
end
if l_0_3 == l_0_5 then
  return mp.INFECTED
end
return mp.CLEAN

