-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_MacroContainer 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if ((string.find)(l_0_1, "->xl/vbaproject.bin") or (string.find)(l_0_1, "->word/vbaproject.bin")) and (mp.get_mpattribute)("MHSTR:MacroInside") then
  (mp.set_mpattribute)("//LUA:MacroInsideContainer")
  return mp.INFECTED
end
return mp.CLEAN

