-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_ExcelDownloader!ibt_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or (string.len)(l_0_0) < 15 then
  return mp.CLEAN
end
if l_0_1 == nil or (string.len)(l_0_1) < 12 then
  return mp.CLEAN
end
do
  if (string.find)(l_0_1, ".xlsb->", 1, true) then
    local l_0_2 = (string.match)(l_0_1, "%.xlsb%->.+")
    if l_0_2:find(">xl/macrosheets/", 1, true) and l_0_2:sub(-4) == ".bin" then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

