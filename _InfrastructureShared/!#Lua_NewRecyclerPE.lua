-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_NewRecyclerPE 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if (l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  if (string.sub)(l_0_1, -4) ~= ".exe" and (string.sub)(l_0_1, -4) ~= ".scr" then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if (string.find)(l_0_2, "\\recycle", 1, true) == nil then
    return mp.CLEAN
  end
  if (string.sub)(l_0_2, 1, 8) == "\\device\\" then
    l_0_2 = (MpCommon.PathToWin32Path)(l_0_2)
  end
  if (string.sub)(l_0_2, 2, 12) == ":\\recycler\\" or (string.sub)(l_0_2, 2, 11) == ":\\recycle\\" or (string.sub)(l_0_2, 2, 12) == ":\\recycled\\" then
    (mp.set_mpattribute)("Lua:NewRecyclerPE")
  end
end
do
  return mp.CLEAN
end

