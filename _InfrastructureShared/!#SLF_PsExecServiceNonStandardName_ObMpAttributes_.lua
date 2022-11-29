-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_PsExecServiceNonStandardName_ObMpAttributes_ 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("Lua:PeOriginalName!psexesvc.exe") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if (string.sub)(l_0_0, 0, 4) == "\\\\?\\" then
  l_0_0 = (string.sub)(l_0_0, 5)
end
if l_0_0:sub(1, 8) == "\\device\\" then
  l_0_0 = (MpCommon.PathToWin32Path)(l_0_0)
  if l_0_0 == nil then
    return mp.CLEAN
  end
  l_0_0 = (string.lower)(l_0_0)
end
local l_0_1 = (string.match)(l_0_0, "([^\\]+)$")
do
  if l_0_1 == "psexesvc.exe" then
    local l_0_2 = (MpCommon.QueryPersistContext)(l_0_0, "PsExecServiceStandardName")
    if not l_0_2 then
      (MpCommon.AppendPersistContext)(l_0_0, "PsExecServiceStandardName", 5)
    end
    return mp.CLEAN
  end
  local l_0_3 = (MpCommon.QueryPersistContext)(l_0_0, "PsExecServiceNonStandardName")
  if not l_0_3 then
    (MpCommon.AppendPersistContext)(l_0_0, "PsExecServiceNonStandardName", 5)
  end
  return mp.INFECTED
end

