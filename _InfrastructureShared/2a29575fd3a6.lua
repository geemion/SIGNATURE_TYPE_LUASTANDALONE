-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2a29575fd3a6 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 98304 then
  return mp.CLEAN
end
if l_0_0 < 40960 then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
if (string.find)(l_0_1, "\n", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_2, l_0_3, l_0_4 = l_0_1:match("function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+),(%l%l%l%l%l%l+)[^%l]")
local l_0_5 = #l_0_3 - 1
local l_0_6 = #l_0_3 + 1
if (#l_0_2 ~= #l_0_3 and #l_0_2 ~= l_0_5 and #l_0_2 ~= l_0_6) or #l_0_3 ~= #l_0_4 and l_0_5 ~= #l_0_4 and l_0_6 ~= #l_0_4 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("SCRIPT:Worm:JS/Proslikefan_Lowfi")
return mp.CLEAN

