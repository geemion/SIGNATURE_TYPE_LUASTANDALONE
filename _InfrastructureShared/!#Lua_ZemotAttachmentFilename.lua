-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_ZemotAttachmentFilename 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if (l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  local l_0_2 = (string.len)(l_0_1)
  if l_0_2 > 15 and l_0_2 <= 30 and (string.sub)(l_0_1, 1, 9) == "rechnung_" and (string.sub)(l_0_1, -4) == ".exe" then
    for l_0_6 = 10, l_0_2 - 4 do
      local l_0_7 = (string.byte)(l_0_1, l_0_6)
      if l_0_7 < 48 or l_0_7 > 57 then
        return mp.CLEAN
      end
    end
    ;
    (mp.set_mpattribute)("Lua:ZemotAttachmentFilename.A")
  end
end
do
  return mp.CLEAN
end

