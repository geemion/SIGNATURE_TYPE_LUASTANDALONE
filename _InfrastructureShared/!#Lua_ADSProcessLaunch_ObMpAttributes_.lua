-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_ADSProcessLaunch_ObMpAttributes_ 

-- params : ...
-- function num : 0
do
  if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) == true then
    local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
    if (string.find)(l_0_0, ":", 1, true) ~= nil then
      if (mp.get_mpattribute)("BM_MZ_FILE") then
        (mp.set_mpattribute)("Lua:ADS_MZ_FILE")
      end
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

