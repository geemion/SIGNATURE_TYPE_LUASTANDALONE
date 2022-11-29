-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SuspTxtOnEsp_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = 8192
local l_0_1 = 131072
local l_0_2 = (mp.getfilesize)()
if not l_0_2 then
  return mp.CLEAN
end
if l_0_0 <= l_0_2 then
  (mp.set_mpattribute)("BM_SUSP_ESP_TXT_FILE")
end
if l_0_1 < l_0_2 then
  return mp.INFECTED
end
;
(mp.readprotection)(false)
local l_0_3 = (mp.readfile)(0, l_0_2)
;
(mp.readprotection)(true)
if not l_0_3 then
  return mp.CLEAN
end
local l_0_4, l_0_5 = (string.gsub)(l_0_3, "rmmod ", "", 5)
if l_0_5 > 5 or (string.find)(l_0_3, ";.-do.-rmmod .-done") then
  (mp.set_mpattribute)("SuspTxtWithRmmodCmds")
end
if (string.find)(l_0_3, "acpi .-%.aml") or (string.find)(l_0_3, "efivar_ssdt=", 1, true) then
  (mp.set_mpattribute)("SuspTxtWithAcpiCmd")
end
if (string.len)(l_0_3) < l_0_0 then
  return mp.CLEAN
end
local l_0_6 = 15000
local l_0_7 = 0
local l_0_8 = 0
local l_0_9 = 0
local l_0_10 = "MpUefiGrubCheck"
local l_0_11 = "MpUefiSuspTxt"
l_0_7 = l_0_3:find("\n", 1, true)
do
  if l_0_7 and l_0_0 < l_0_7 then
    local l_0_12 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
    if l_0_12 ~= "grub.cfg" then
      (MpCommon.AppendPersistContextNoPath)(l_0_10, l_0_11, 60)
    end
    return mp.INFECTED
  end
  while 1 do
    -- DECOMPILER ERROR at PC132: Overwrote pending register: R8 in 'AssignReg'

    if l_0_9 < l_0_6 then
      l_0_7 = l_0_3:find("%b\n\n", l_0_7 + 1)
    end
    if not l_0_7 then
      break
    end
    l_0_9 = l_0_9 + 1
    if l_0_0 < l_0_8 - l_0_7 then
      local l_0_13 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
      if l_0_13 ~= "grub.cfg" then
        (MpCommon.AppendPersistContextNoPath)(l_0_10, l_0_11, 60)
      end
      return mp.INFECTED
    end
  end
  do
    return mp.CLEAN
  end
end

