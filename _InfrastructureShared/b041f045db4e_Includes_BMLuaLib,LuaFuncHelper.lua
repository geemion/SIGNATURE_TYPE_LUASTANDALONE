-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b041f045db4e_Includes_BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
if peattributes.ismsil ~= true or peattributes.isdll ~= true or peattributes.hasexports ~= false then
  return mp.CLEAN
end
local l_0_0 = nil
if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).p1 ~= nil then
  l_0_0 = (string.lower)((this_sigattrlog[8]).p1)
end
if contains(l_0_0, "aspnet_regbrowsers") then
  return mp.CLEAN
end
l_0_0 = str_reverse(l_0_0:gsub("[-,.]", ""))
if contains(l_0_0, "aspnet_regbrowsers") then
  return mp.INFECTED
end
return mp.CLEAN

