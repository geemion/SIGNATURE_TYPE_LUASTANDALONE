-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_ASRCALL01443614-cd74-433a-b99e-2ecdc07bfc25_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONOPEN and l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if not (mp.IsHipsRuleEnabled)("01443614-cd74-433a-b99e-2ecdc07bfc25") then
  return mp.CLEAN
end
local l_0_1 = (mp.get_parent_filehandle)()
if not (mp.is_handle_nil)(l_0_1) then
  return mp.CLEAN
end
if l_0_0 == mp.SCANREASON_ONOPEN then
  local l_0_2 = {}
  l_0_2["rundll32.exe"] = true
  l_0_2["regsvr32.exe"] = true
  if l_0_2[(string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))] == true then
    if (mp.get_mpattribute)("MpDisableCaching") then
      (mp.clear_mpattribute)("MpDisableCaching")
    end
    local l_0_3 = (string.lower)((MpCommon.PathToWin32Path)((mp.getfilename)(mp.FILEPATH_QUERY_FULL)))
    if (string.find)(l_0_3, ".:\\windows\\installer\\[^\\]+%.tmp$") then
      return mp.CLEAN
    end
    if (string.find)(l_0_3, ".:\\windows\\installer\\[^%.]+%.tmp%-\\installercustomactions%.dll$") then
      return mp.CLEAN
    end
    local l_0_7, l_0_8 = (mp.IsTrustedFile)(false)
    if l_0_7 == false then
      return mp.INFECTED
    end
  end
else
  do
    local l_0_4, l_0_5 = (mp.IsTrustedFile)(false)
    do
      if l_0_4 == false then
        local l_0_6 = mp.set_mpattribute
        l_0_6("MpDisableCaching")
      end
      return mp.CLEAN
    end
  end
end

