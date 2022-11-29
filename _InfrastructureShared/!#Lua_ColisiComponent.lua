-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_ColisiComponent 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if (l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  if l_0_1 ~= "appdataFr3.bin" then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_2:sub(-17) ~= "\\application data" and l_0_2:sub(-16) ~= "\\appdata\\roaming" then
    return mp.CLEAN
  end
  local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
  local l_0_4 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
  ;
  (mp.ReportLowfi)((MpCommon.PathToWin32Path)(l_0_4) .. "\\" .. l_0_3, 3091388344)
  return mp.INFECTED
end
do
  return mp.CLEAN
end

