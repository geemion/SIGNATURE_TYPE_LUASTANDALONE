-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_MitreAttributesToPersistContext.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = "BM_MT"
local l_0_1 = (mp.enum_mpattributesubstring)(l_0_0)
if l_0_1 == nil or #l_0_1 == 0 or type(l_0_1) ~= "table" then
  return mp.CLEAN
end
local l_0_2 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
for l_0_6,l_0_7 in ipairs(l_0_1) do
  local l_0_8 = (string.sub)(l_0_7, #l_0_0, #l_0_7)
  if l_0_8 ~= nil and #l_0_8 >= 4 and (string.match)(l_0_8, "^[tT][0-9][0-9][0-9][0-9]") and not (MpCommon.QueryPersistContext)(l_0_2, l_0_8) then
    (MpCommon.AppendPersistContext)(l_0_2, l_0_8, 0)
  end
end
return mp.CLEAN

