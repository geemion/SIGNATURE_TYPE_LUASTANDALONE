-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_O97_TemplateInjectionUris.B_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 1536000 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if not l_0_1:find("_rels/", 1, true) then
  local l_0_2 = nil
  local l_0_3 = 0
  local l_0_4 = ""
  ;
  (mp.readprotection)(false)
  l_0_2 = tostring((mp.readfile)(0, l_0_0))
  for l_0_8 in l_0_2:gmatch("<Relationship %/?([%w:]+.-%/?)/>") do
    local l_0_9 = l_0_8:match("Type%S?=%S?\"[%w:/.]+/relationships/([%w/.]+)")
    local l_0_10 = l_0_8:match("Target%S?=%S?\"(http[^\"]+)")
    if l_0_10 ~= nil and l_0_9 ~= nil then
      local l_0_11 = (string.lower)(l_0_10)
      l_0_4 = l_0_4 .. "\n" .. (string.lower)(l_0_9) .. "->" .. l_0_11
      l_0_3 = l_0_3 + 1
    end
  end
  if l_0_3 > 1 then
    (mp.vfo_add_buffer)(l_0_4, "[officedocuri]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

