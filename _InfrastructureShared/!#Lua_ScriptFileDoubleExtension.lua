-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_ScriptFileDoubleExtension 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0:len() < 8 then
  return mp.CLEAN
end
local l_0_1 = (string.sub)(l_0_0, -4)
if l_0_1 ~= ".exe" and l_0_1 ~= ".vbs" and l_0_1 ~= ".jar" then
  l_0_1 = (string.sub)(l_0_0, -3)
  if l_0_1 ~= ".js" then
    return mp.CLEAN
  end
end
if l_0_0:len() > 20 and (string.sub)(l_0_0, -16) == "_captions.mp3.js" then
  return mp.CLEAN
end
local l_0_2 = {}
l_0_2[".doc"] = ""
l_0_2[".xls"] = ""
l_0_2[".ppt"] = ""
l_0_2[".pdf"] = ""
l_0_2[".jpg"] = ""
l_0_2[".gif"] = ""
l_0_2[".png"] = ""
l_0_2[".pic"] = ""
l_0_2[".txt"] = ""
l_0_2[".mp3"] = ""
l_0_2[".docx"] = ""
l_0_2[".xlsx"] = ""
l_0_2[".pptx"] = ""
local l_0_3 = (string.sub)(l_0_0, -7)
if l_0_2[(string.sub)(l_0_3, 1, 4)] and l_0_1 == ".js" then
  (mp.set_mpattribute)("Lua:ContextJSDoubleExtension")
  ;
  (mp.set_mpattribute)("NScript:JSEnableEmulation")
end
l_0_3 = (string.sub)(l_0_0, -8)
if l_0_2[(string.sub)(l_0_3, 1, 4)] and l_0_1 == ".vbs" then
  (mp.set_mpattribute)("Lua:ContextVBSDoubleExtension")
end
if l_0_2[(string.sub)(l_0_3, 1, 4)] and l_0_1 == ".jar" then
  (mp.set_mpattribute)("Lua:ContextJARDoubleExtension")
end
if l_0_2[(string.sub)(l_0_3, 1, 4)] and l_0_1 == ".exe" then
  (mp.set_mpattribute)("Lua:ContextEXEDoubleExtension")
end
if l_0_2[(string.sub)(l_0_3, 1, 4)] and l_0_1 == ".js" then
  (mp.set_mpattribute)("Lua:ContextJSDoubleExtension")
  ;
  (mp.set_mpattribute)("NScript:JSEnableEmulation")
end
l_0_3 = (string.sub)(l_0_0, -9)
if l_0_2[(string.sub)(l_0_3, 1, 4)] and l_0_1 == ".vbs" then
  (mp.set_mpattribute)("Lua:ContextVBSDoubleExtension")
end
if l_0_2[(string.sub)(l_0_3, 1, 4)] and l_0_1 == ".jar" then
  (mp.set_mpattribute)("Lua:ContextJARDoubleExtension")
end
if l_0_2[(string.sub)(l_0_3, 1, 4)] and l_0_1 == ".exe" then
  (mp.set_mpattribute)("Lua:ContextEXEDoubleExtension")
end
return mp.CLEAN

