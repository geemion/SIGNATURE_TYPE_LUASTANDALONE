-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4729ddd71002_Includes_ScriptLuaLib 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 ~= nil and l_0_0 >= 10240 then
  return mp.CLEAN
end
local l_0_1 = LoadMatchedDataInBuffer()
local l_0_2 = "curl[%w%s%-]+http://[%d]+%.[%d]+%.[%d]+%.[%d]+/[/%w%.%-_]+;%schmod%s%+x%s[/%w%.%-_]+;%s+[/%w%s%.%-_]+;%srm%s%-rf?%s[/%w%.%-_]+"
if GetPatternOccurenceCount(l_0_1, l_0_2) > 5 then
  return mp.INFECTED
end
return mp.CLEAN

