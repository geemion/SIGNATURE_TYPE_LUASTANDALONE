-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_SuspiciousDropExeAttrib.A 

-- params : ...
-- function num : 0
CheckPEAttribute = function(l_1_0)
  -- function num : 0_0
  if peattributes[l_1_0] then
    return true
  end
  return false
end

local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if (l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  if l_0_1 == nil or #l_0_1 < 1 then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)(l_0_1)
  local l_0_3 = {}
  l_0_3[".dll"] = ""
  l_0_3[".exe"] = ""
  l_0_3[".scr"] = ""
  l_0_3[".dat"] = ""
  if (CheckPEAttribute("isexe") or CheckPEAttribute("isdll")) and l_0_3[l_0_2:sub(-4)] then
    local l_0_4 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
    if l_0_4 == nil or #l_0_4 < 1 then
      return mp.CLEAN
    end
    local l_0_5 = (MpCommon.PathToWin32Path)(l_0_4)
    if l_0_5 == nil or #l_0_5 < 1 then
      return mp.CLEAN
    end
    local l_0_6 = (string.lower)(l_0_5)
    if l_0_6:sub(-42) == "\\local settings\\application data\\microsoft" or l_0_6:sub(-17) == "\\application data" or l_0_6:sub(-14) == "\\appdata\\local" or l_0_6:sub(-16) == "\\appdata\\roaming" or l_0_6:sub(-9) == "\\system32" or l_0_6:sub(2) == ":\\windows" or l_0_6:sub(2) == ":\\windir" or l_0_6:sub(-11) == "\\start menu" or l_0_6:sub(-27) == "\\program files\\common files" or l_0_6:sub(2) == ":\\documents and settings\\all users\\start menu" or l_0_6:sub(2) == ":\\programdata\\microsoft\\windows\\start menu" or l_0_6:sub(2) == ":\\programdata\\microsoft\\windows\\start menu\\programs" or l_0_6:sub(2) == ":\\programdata\\microsoft\\windows\\start menu\\programs\\startup" or l_0_6:sub(2) == ":\\documents and settings\\all users\\start menu\\programs" or l_0_6:sub(2) == ":\\documents and settings\\all users\\start menu\\programs\\startup" or l_0_6:sub(2) == ":\\program files (x86)\\common files" or l_0_6:sub(-26) == "\\appdata\\roaming\\microsoft" or l_0_6:sub(-5) == "\\temp" or l_0_6:sub(2) == ":\\program files\\common files" or l_0_6:sub(2) == ":\\programdata" or l_0_6:sub(-27) == "\\appdata\\roaming\\identities" or l_0_6:sub(-28) == "\\application data\\identities" then
      local l_0_7 = (sysio.GetFileAttributes)((mp.getfilename)())
      if l_0_7 ~= 4294967295 then
        l_0_7 = (mp.bitand)(l_0_7, 3)
        if l_0_7 == 3 then
          (mp.set_mpattribute)("Lua:SuspiciousDropExeAttrib.A")
        else
          if l_0_7 ~= 0 then
            (mp.set_mpattribute)("Lua:SuspiciousDropExeAttrib.B")
          end
        end
      end
    end
  end
end
do
  return mp.CLEAN
end

