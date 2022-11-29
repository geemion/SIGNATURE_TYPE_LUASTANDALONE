-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_Lua_ExeHugeOverlay 

-- params : ...
-- function num : 0
if not peattributes.isexe then
  return mp.CLEAN
end
if not peattributes.hasappendeddata then
  return mp.CLEAN
end
if peattributes.ismsil then
  return mp.CLEAN
end
if peattributes.isvbnative or peattributes.isvbpcode then
  return mp.CLEAN
end
if (mp.get_mpattribute)("Win32/AutoIt") or (mp.get_mpattribute)("Win32/AutoIt_HSTR1") or (mp.get_mpattribute)("Win32/AutoIt_HSTR2") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("HSTR:Win32/DelphiFile") or (mp.get_mpattribute)("SIGATTR:DelphiFile") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("HSTR:NSIS.gen!A") or (mp.get_mpattribute)("HSTR:NSIS_Installer") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("ValidDigitalSignature") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 209715200 then
  return mp.CLEAN
end
if l_0_0 < 52428800 then
  return mp.CLEAN
end
local l_0_1 = pehdr.NumberOfSections
if l_0_1 > 4 then
  return mp.CLEAN
end
if l_0_1 < 3 then
  return mp.CLEAN
end
local l_0_2 = (pesecs[1]).SizeOfRawData
if l_0_2 <= 196608 and l_0_2 >= 36864 then
  local l_0_3 = (pesecs[l_0_1]).PointerToRawData + (pesecs[l_0_1]).SizeOfRawData
  local l_0_4 = l_0_0 - l_0_3
  if l_0_4 > 208666624 then
    return mp.CLEAN
  end
  if l_0_4 < 51380224 then
    return mp.CLEAN
  end
  if (mp.get_mpattribute)("MpAPILimitReached") or (mp.get_mpattribute)("MpHasExpensiveLoop") or peattributes.dt_error_not_enough_memory or peattributes.dt_error_heur_exit_criteria or peattributes.executes_from_dynamic_memory then
    (mp.readprotection)(false)
    local l_0_5 = (mp.readfile)(l_0_3, 16)
    if (string.find)(l_0_5, "%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]") then
      (mp.set_mpattribute)("MpRequestHookwowM")
      local l_0_6 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
      if l_0_6:sub(-4) ~= ".exe" then
        return mp.CLEAN
      end
      local l_0_7 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
      if (l_0_7:sub(-10) == "\\all users" or l_0_7:sub(-12) == "\\programdata" or l_0_7:sub(-17) == "\\application data" or l_0_7:sub(-16) == "\\appdata\\roaming") and (l_0_6:sub(1, 2) == "ms" or l_0_6:sub(1, 2) == "ob") then
        (mp.set_mpattribute)("Lua:ExeGamObfusHugeOverlay")
      end
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

