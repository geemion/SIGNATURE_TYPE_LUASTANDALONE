-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_LuaSuspLnkContainer 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 20480 then
  return mp.CLEAN
end
local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1 == nil or (string.len)(l_0_1) < 20 then
  return mp.CLEAN
end
if l_0_2 == nil or (string.len)(l_0_2) < 15 then
  return mp.CLEAN
end
if (string.find)(l_0_2, "->", 1, true) == nil then
  return mp.CLEAN
end
if l_0_2:sub(-4) == ".lnk" and l_0_2:match("^(%d%d%d%d%d%d%d%d%->.+%.lnk)$", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

