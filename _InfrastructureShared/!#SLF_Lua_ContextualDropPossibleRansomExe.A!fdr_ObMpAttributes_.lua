-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_Lua_ContextualDropPossibleRansomExe.A!fdr_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  if not peattributes.isexe or peattributes.isdriver or peattributes.no_security == false or peattributes.no_fixups == false then
    return mp.CLEAN
  end
  local l_0_0 = (mp.getfilesize)()
  if l_0_0 < 262144 or l_0_0 > 1048576 then
    return mp.CLEAN
  end
  local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_1:find("\\temp\\", 1, true) == nil then
    return mp.CLEAN
  end
  local l_0_3 = {}
  l_0_3["exename.exe"] = true
  if l_0_3[l_0_2] then
    return mp.INFECTED
  end
  if l_0_2:find("^rad%x%x%x%x%x%.tmp%.exe$") then
    (mp.set_mpattribute)("MpRequestHookwowM")
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

