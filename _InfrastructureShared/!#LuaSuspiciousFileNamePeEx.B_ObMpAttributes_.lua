-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LuaSuspiciousFileNamePeEx.B_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 ~= nil and l_0_0:len() > 10 and l_0_1 ~= nil and l_0_1:len() > 31 then
  if l_0_0:find("cache\\", 1, true) or l_0_0:find("backup\\", 1, true) or l_0_0:find(".git\\", 1, true) or l_0_0:find("\\programdata\\", 1, true) or l_0_0:find("\\appdata\\local\\temp\\tencent\\", 1, true) or l_0_0:find(":\\windows\\system32\\grouppolicy\\", 1, true) or l_0_0:find("\\system recovery\\", 1, true) or l_0_1:find(".cache", 1, true) or l_0_1:find(".error", 1, true) or l_0_0:find("\\recovered data\\", 1, true) or l_0_0:find("\\mscrm_rw\\assemblycache\\", 1, true) or l_0_0:find("\\server\\microsoftdynamicsnavserver", 1, true) or l_0_0:find(":\\falsepos\\", 1, true) then
    (mp.set_mpattribute)("Lua:ExceptionPathPE")
    return mp.CLEAN
  end
  local l_0_2 = (string.sub)(l_0_1, -5)
  if not l_0_2:find(".", 1, true) then
    return mp.CLEAN
  end
  local l_0_3 = l_0_1:match("^[0-9a-f]+")
  if l_0_3 == nil then
    return mp.CLEAN
  end
  local l_0_4 = l_0_3:len()
  if l_0_4 < 31 or l_0_4 < l_0_1:len() - 5 then
    return mp.CLEAN
  end
  ;
  (mp.set_mpattribute)("//LuaSuspiciousFileNamePeExChild.B")
  return mp.INFECTED
end
do
  return mp.CLEAN
end

