-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_SuspFileDropByOfficeApp_Includes_GetEmailPaths 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONOPEN and l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = "winword.exe|excel.exe|powerpnt.exe|outlook.exe|commsapps.exe|lync.exe|teams.exe|"
if l_0_2:find(l_0_1) or isOutlookProcess(l_0_1) then
  local l_0_3, l_0_4 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  local l_0_5 = l_0_4:sub(-3)
  local l_0_6 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
  local l_0_7 = false
  ;
  (mp.set_mpattribute)("Lua:OfficeApp!" .. l_0_1)
  ;
  (mp.set_mpattribute)("Lua:OfficeAppDropped!" .. l_0_4)
  ;
  (mp.set_mpattribute)("Lua:OfficeAppDroppedExt!" .. l_0_5)
  if l_0_6 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
    if (mp.get_mpattribute)("BM_ScriptFile") then
      (mp.set_mpattribute)("BM_ScriptFileDropByOffcApp")
    end
    if (mp.get_mpattribute)("BM_MZ_FILE") then
      if l_0_3:find("appdata\\local\\assembly", 1, true) or l_0_3:find("\\local\\box\\", 1, true) then
        (mp.set_mpattribute)("Lua:OfficeAddinAssemblyExclPath")
        l_0_7 = true
      else
        ;
        (mp.set_mpattribute)("BM_PeFileDropByOffcApp")
      end
    end
    if (mp.get_mpattribute)("BM_LNK_FILE") then
      (mp.set_mpattribute)("BM_LnkFileDropByOffcApp")
    end
    if l_0_5 == "pdf" then
      (mp.set_mpattribute)("BM_PdfDroppedByOfficeApp")
    end
    local l_0_8 = "tmf|emf|wmf|spl|off|bak|m4a|mp4|mp3|wav|bmp|kgx|idx|etl|log|ico|"
    local l_0_9 = "aplorislib[1].js|tokencache|temp.db.idx|msip_telemetry.tm-journal|_isres_0x0409.dll"
    if l_0_8:find(l_0_5) or l_0_9:find(l_0_4) or l_0_4:match("~wrs%{.+%}%.tmp") or l_0_4:match("mso.+%.tmp") or l_0_4:match("oc.+%.tmp") or l_0_4:match("react.+%.js") or l_0_3:find("\\office\\recent", 1, true) or l_0_3:find("\\windows\\recent", 1, true) or l_0_3:find("$recycle.bin", 1, true) or l_0_3:find("\\appdata\\roaming\\microsoft\\excel\\.-xlsx?%.lnk") or l_0_3:find("\\appdata\\roaming\\microsoft\\word\\.-docx?%.lnk") or l_0_3:find("\\appdata\\roaming\\microsoft\\powerpoint\\.-pptx?%.lnk") or l_0_3:find("\\microsoft\\teams\\", 1, true) or l_0_3:find("\\windows\\cryptoguard", 1, true) or l_0_3:find("\\microsoft\\msip\\tokencache", 1, true) or l_0_3:find("\\internet explorer\\quick launch\\microsoft outlook.lnk", 1, true) or l_0_3:find("\\carbonblack\\store", 1, true) or l_0_3:find("\\crowdstrike\\downloads", 1, true) or l_0_3:find("\\cyvera\\ransomware", 1, true) or l_0_3:find("\\outlook\\offline address books", 1, true) or l_0_3:find("\\slack\\service worker\\cachestorage", 1, true) or l_0_3:find("\\systemcertificates\\my\\certificates\\", 1, true) or l_0_3:find("\\temp\\photocache\\", 1, true) or l_0_3:find("\\windows\\csc\\", 1, true) then
      l_0_7 = true
    end
    if l_0_7 then
      (mp.set_mpattribute)("Lua:OfficeAppExcludePath")
    end
    if not l_0_7 then
      if l_0_3:match("windows\\temp") then
        (mp.set_mpattribute)("Lua:OfficeAppDroppedIn!wintemp")
      end
      if l_0_3:match("users\\.-\\appdata\\local") then
        (mp.set_mpattribute)("Lua:OfficeAppDroppedIn!localappdata")
      end
      if l_0_3:match("users\\.-\\appdata\\remote") then
        (mp.set_mpattribute)("Lua:OfficeAppDroppedIn!remoteappdata")
      end
      if l_0_3:match("users\\.-\\appdata\\local\\temp") then
        (mp.set_mpattribute)("Lua:OfficeAppDroppedIn!usrtemp")
      end
      if l_0_3:match("users\\.-\\desktop$") then
        (mp.set_mpattribute)("Lua:OfficeAppDroppedIn!usrdesktop")
      end
      if l_0_3:match("users\\.-\\documents$") then
        (mp.set_mpattribute)("Lua:OfficeAppDroppedIn!usrdocs")
      end
    end
  end
  do
    do
      do return mp.INFECTED end
      return mp.CLEAN
    end
  end
end

