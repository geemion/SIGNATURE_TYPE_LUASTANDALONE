-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#BLKACC_3b576869-a4ec-4529-8536-b80a7769e899_Includes_HipsLuaInfra_ 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("3b576869-a4ec-4529-8536-b80a7769e899") then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if GetCtxOfficeProc() ~= "productivity" then
  if (MpCommon.GetPersistContextCountNoPath)("BlockOfficeCreateExecContentProcs") == 0 then
    return mp.CLEAN
  end
  local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
  if l_0_0 == "" or l_0_0 == nil then
    return mp.CLEAN
  end
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if l_0_1 == "" or l_0_1 == nil then
    return mp.CLEAN
  end
  local l_0_2 = l_0_1 .. "+" .. l_0_0
  if not (MpCommon.QueryPersistContextNoPath)("BlockOfficeCreateExecContentProcs", l_0_2) then
    return mp.CLEAN
  end
end
do
  local l_0_3 = {}
  l_0_3[".bat"] = true
  l_0_3[".cmd"] = true
  l_0_3[".hta"] = true
  l_0_3[".jar"] = true
  l_0_3[".js"] = true
  l_0_3[".jse"] = true
  l_0_3[".lnk"] = true
  l_0_3[".pif"] = true
  l_0_3[".ps1"] = true
  l_0_3[".psc1"] = true
  l_0_3[".settingcontent-ms"] = true
  l_0_3[".appcontent-ms"] = true
  l_0_3[".application"] = true
  l_0_3[".scr"] = true
  l_0_3[".sys"] = true
  l_0_3[".vbe"] = true
  l_0_3[".vbs"] = true
  l_0_3[".wsc"] = true
  l_0_3[".wsf"] = true
  l_0_3[".wsh"] = true
  l_0_3[".ocx"] = true
  l_0_3[".com"] = true
  l_0_3[".exe"] = true
  l_0_3[".dll"] = true
  l_0_3[".xll"] = true
  local l_0_4 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  l_0_4 = (l_0_4 == nil and "" or l_0_4):lower()
  if (l_0_4:sub(-20)):match("(%.[%w%-]+)$") ~= nil or not "" then
    local l_0_6 = nil
    local l_0_7 = ((MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)) == nil and "" or (MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))):lower()
    local l_0_8 = ((mp.ContextualExpandEnvironmentVariables)("%appdata%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%appdata%")):lower()
    local l_0_9 = ((mp.ContextualExpandEnvironmentVariables)("%localappdata%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%localappdata%")):lower()
    local l_0_10 = ((mp.ContextualExpandEnvironmentVariables)("%temp%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%temp%")):lower()
    local l_0_11 = ((mp.ContextualExpandEnvironmentVariables)("%programdata%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%programdata%")):lower()
    local l_0_12 = ((mp.ContextualExpandEnvironmentVariables)("%systemdrive%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%systemdrive%")):lower()
    local l_0_13 = ((mp.ContextualExpandEnvironmentVariables)("%systemroot%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%systemroot%")):lower()
    local l_0_14 = ((mp.ContextualExpandEnvironmentVariables)("%userprofile%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%userprofile%")):lower()
    local l_0_15 = ((mp.ContextualExpandEnvironmentVariables)("%programfiles%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%programfiles%")):lower()
    if l_0_3[l_0_6] == true then
      if l_0_6 == ".lnk" then
        if l_0_7:find(l_0_8 .. "\\microsoft\\office\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_8 .. "\\microsoft\\excel\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_8 .. "\\microsoft\\onenote\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_8 .. "\\microsoft\\outlook\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_8 .. "\\microsoft\\olk\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_8 .. "\\microsoft\\powerpoint\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_8 .. "\\microsoft\\word\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_8 .. "\\microsoft\\internet explorer\\quick launch", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_8 .. "\\roaming\\microsoft\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7 == l_0_8 .. "\\microsoft\\windows\\start menu\\programs\\startup" then
          return mp.CLEAN
        end
        if l_0_7 == l_0_9 .. "\\packages\\microsoft.office.desktop_8wekyb3d8bbwe\\localcache\\roaming\\microsoft\\internet explorer\\quick launch" then
          return mp.CLEAN
        end
        if l_0_7 == l_0_9 .. "\\packages\\microsoft.office.desktop_8wekyb3d8bbwe\\localcache\\roaming\\microsoft\\office\\recent" then
          return mp.CLEAN
        end
        if l_0_7 == l_0_9 .. "\\packages\\microsoft.office.desktop_8wekyb3d8bbwe\\localcache\\roaming\\microsoft\\windows\\start menu\\programs\\startup" then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_9 .. "\\invincea\\enterprise\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_12 .. "\\appsensevirtual\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_13 .. "\\syswow64\\config\\systemprofile\\appdata\\roaming\\microsoft\\office\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7 == l_0_14 .. "\\documents\\my data sources" then
          return mp.CLEAN
        end
        if l_0_7 == l_0_14 .. "\\onedrive\\documents\\my data sources" then
          return mp.CLEAN
        end
      else
        if l_0_6 == ".js" then
          if l_0_7:find(l_0_9 .. "\\microsoft\\windows\\inetcache\\ie\\", 1, true) ~= nil then
            return mp.CLEAN
          end
          if l_0_7:find(l_0_9 .. "\\microsoft\\windows\\temporary internet files\\content.ie5\\", 1, true) ~= nil then
            return mp.CLEAN
          end
          if l_0_7:find(l_0_9 .. "\\packages\\microsoft.office.desktop_8wekyb3d8bbwe\\ac\\inetcache\\", 1, true) ~= nil then
            return mp.CLEAN
          end
          if l_0_7:find(l_0_9 .. "\\microsoft\\office\\16.0\\smartlookupcache\\", 1, true) ~= nil then
            return mp.CLEAN
          end
          if l_0_7:find(l_0_14 .. "\\inetcache\\ie\\[^\\]+\\[^\\]+%.js$") ~= nil then
            return mp.CLEAN
          end
          local l_0_16 = ((mp.ContextualExpandEnvironmentVariables)("%programfiles(x86)%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%programfiles(x86)%")):lower()
          if (mp.ContextualGetShellKnownFolder)("352481E8-33BE-4251-BA85-6007CAEDCF9D") ~= nil and (mp.ContextualGetShellKnownFolder)("352481E8-33BE-4251-BA85-6007CAEDCF9D") ~= "" and l_0_7:find((mp.ContextualGetShellKnownFolder)("352481E8-33BE-4251-BA85-6007CAEDCF9D") .. "\\ie", 1, true) ~= nil then
            return mp.CLEAN
          end
          if l_0_7:find("%a:\\users\\local_[^\\]+\\inetcache\\ie\\[^\\]+\\[^\\]+%.js") ~= nil then
            return mp.CLEAN
          end
        else
          do
            if l_0_6 == ".application" then
              if l_0_7:find(l_0_10 .. "\\deployment\\%w%w%w%w%w%w%w%w%.%w%w%w") ~= nil and l_0_4:find("^%w%w%w%w%w%w%w%w%.%w%w%w%.application$") ~= nil then
                return mp.CLEAN
              end
              if l_0_7:find(l_0_10 .. "\\%d+\\deployment\\%w%w%w%w%w%w%w%w%.%w%w%w") ~= nil and l_0_4:find("^%w%w%w%w%w%w%w%w%.%w%w%w%.application$") ~= nil then
                return mp.CLEAN
              end
              local l_0_17 = nil
              if l_0_7:match("\\deployment\\%w%w%w%w%w%w%w%w%.%w%w%w$") ~= nil then
                if l_0_7:find(l_0_10 .. l_0_7:match("\\deployment\\%w%w%w%w%w%w%w%w%.%w%w%w$"), 1, true) and l_0_4:find("^%w%w%w%w%w%w%w%w%.%w%w%w%.application$") ~= nil then
                  return mp.CLEAN
                end
                if l_0_4:find("^%w%w%w%w%w%w%w%w%.%w%w%w%.application$") ~= nil and l_0_7 == l_0_14 .. "\\appdata\\local\\temp" .. l_0_7:match("\\deployment\\%w%w%w%w%w%w%w%w%.%w%w%w$") then
                  return mp.CLEAN
                end
              end
            else
              do
                if l_0_6 == ".dll" or l_0_6 == ".exe" then
                  if (mp.IsTrustedFile)(false) == true then
                    return mp.CLEAN
                  end
                  if l_0_7:find(l_0_9 .. "\\assembly\\tmp\\", 1, true) ~= nil then
                    return mp.CLEAN
                  end
                  if (mp.get_mpattribute)("Lua:SignedThinkCellComponent") then
                    return mp.CLEAN
                  end
                  if l_0_6 == ".dll" and (mp.get_mpattribute)("SOAPSchema.A") then
                    return mp.CLEAN
                  end
                end
                ;
                (mp.set_mpattribute)("MpDisableCaching")
                do return mp.INFECTED end
                if l_0_7:find(l_0_11 .. "\\microsoft\\windows\\start menu\\programs\\startup", 1, true) ~= nil then
                  return mp.INFECTED
                end
                if l_0_7:find(l_0_8 .. "\\microsoft\\windows\\start menu\\programs\\startup", 1, true) ~= nil then
                  return mp.INFECTED
                end
                if (mp.get_mpattribute)("BM_CONTAINER_FILE") or (mp.get_mpattribute)("BM_SCRIPT_OR_TEXT_FILE") then
                  if (MpCommon.QueryPersistContext)(l_0_7, "DroppedByOfficeProc") then
                    return mp.CLEAN
                  end
                  ;
                  (MpCommon.AppendPersistContext)(l_0_7, "DroppedByOfficeProc", 0)
                  ;
                  (mp.ReportLowfi)((mp.getfilename)(), 1585622778)
                  ;
                  (mp.set_mpattribute)("MpDisableCaching")
                end
                return mp.CLEAN
              end
            end
          end
        end
      end
    end
  end
end

