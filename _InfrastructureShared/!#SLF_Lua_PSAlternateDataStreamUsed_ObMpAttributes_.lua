-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_Lua_PSAlternateDataStreamUsed_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
    local l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
    if l_0_1:find("\\msft%.azure%.azure%-backup.-\\powershell%-module") then
      return mp.CLEAN
    else
      if l_0_1:find("\\msft%.sme%.azure%-center.-\\powershell%-module") then
        return mp.CLEAN
      end
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

