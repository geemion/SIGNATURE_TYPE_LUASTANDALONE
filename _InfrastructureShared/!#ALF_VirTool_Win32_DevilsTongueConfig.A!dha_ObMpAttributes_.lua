-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_VirTool_Win32_DevilsTongueConfig.A!dha_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 40000 or l_0_0 > 48000000 then
  return mp.CLEAN
end
if l_0_0 % 16 ~= 0 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_FULL)
l_0_1 = (string.lower)((MpCommon.PathToWin32Path)(l_0_1))
if l_0_1 ~= nil and l_0_1:len() > 40 and l_0_1:find("c:\\windows\\system32\\config\\", 1, true) then
  if l_0_1:find("\\config\\systemprofile\\", 1, true) then
    return mp.CLEAN
  end
  if l_0_1:find("\\system32\\config\\cache\\", 1, true) then
    return mp.CLEAN
  end
  if l_0_1:find("\\recoverybin\\", 1, true) then
    return mp.CLEAN
  end
  if l_0_1:find("\\appdata\\", 1, true) then
    return mp.CLEAN
  end
  if l_0_1:find("ntuser.dat", 1, true) then
    return mp.CLEAN
  end
  if l_0_1:find("\\system32\\config\\journal", 1, true) then
    return mp.CLEAN
  end
  if l_0_1:find("\\system32\\config\\regback", 1, true) then
    return mp.CLEAN
  end
  if l_0_1:find("\\system32\\config\\txr", 1, true) then
    return mp.CLEAN
  end
  local l_0_2 = select(2, (string.gsub)(l_0_1, "\\", ""))
  if l_0_2 < 5 then
    return mp.CLEAN
  end
  ;
  (mp.set_mpattribute)("MpNonPIIFileType")
  return mp.INFECTED
end
do
  return mp.CLEAN
end

