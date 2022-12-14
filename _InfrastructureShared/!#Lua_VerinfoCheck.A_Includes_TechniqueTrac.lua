-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_VerinfoCheck.A_Includes_TechniqueTrac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 == nil then
  (mp.set_mpattribute)("Lua:NoVerinfo")
  return mp.CLEAN
end
local l_0_1 = l_0_0.CompanyName
if l_0_1 ~= nil then
  for l_0_5 = 32, 47 do
    local l_0_6 = (string.format)("%c%c%c", l_0_5, l_0_5, l_0_5)
    if (string.find)(l_0_1, l_0_6, 1, true) ~= nil then
      do
        do
          (mp.set_mpattribute)("LUA:PEAnomaly_SpecialCompanyName")
          do break end
          -- DECOMPILER ERROR at PC40: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC40: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC40: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  local l_0_7 = l_0_0.LegalCopyright
  if l_0_7 ~= nil and (string.find)(l_0_7, l_0_1, 1, true) == nil then
    (mp.set_mpattribute)("LUA:PEAnomaly_CopyrightNotContainsCompany")
  end
end
do
  local l_0_8 = l_0_0.FileVersion
  if l_0_8 ~= nil and ((string.find)(l_0_8, "[0-9]", 1) == nil or (string.find)(l_0_8, ".", 1, true) == nil) then
    (mp.set_mpattribute)("LUA:PEAnomaly_InvalidFileVersion")
  end
  local l_0_9, l_0_10 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_10 == nil or l_0_9 == nil then
    return mp.CLEAN
  end
  local l_0_11 = "|accesschk.exe|accesschk64.exe|accessenum.exe|acrord32.exe|adexplorer.exe|adinsight.exe|adrestore.exe|applicationframehost.exe|appvclient.exe|appvlp.exe|atbroker.exe|audiodg.exe|autoruns.exe|autoruns64.exe|autorunsc.exe|autorunsc64.exe|bash.exe|bginfo.exe|bginfo64.exe|bitsadmin.exe|browser_broker.exe|calc.exe|cdb.exe|certutil.exe|clockres.exe|clockres64.exe|cmd.exe|cmdkey.exe|cmstp.exe|conhost.exe|consent.exe|contig.exe|contig64.exe|control.exe|coreinfo.exe|csc.exe|cscript.exe|csi.exe|csrss.exe|ctfmon.exe|ctrl2cap.exe|dashost.exe|dataexchangehost.exe|dbgview.exe|dfsvc.exe|disk2vhd.exe|diskext.exe|diskext64.exe|diskshadow.exe|dllhost.exe|dnscmd.exe|dnx.exe|dxcap.exe|esentutl.exe|expand.exe|explorer.exe|extexport.exe|extrac32.exe|findlinks.exe|findlinks64.exe|findstr.exe|fontdrvhost.exe|forfiles.exe|fxssvc.exe|gpscript.exe|gpup.exe|handle.exe|handle64.exe|hex2dec.exe|hex2dec64.exe|hh.exe|ie4uinit.exe|ieexec.exe|infdefaultinstall.exe|installutil.exe|junction.exe|junction64.exe|ldmdump.exe|livekd.exe|livekd64.exe|loadord.exe|loadord64.exe|loadordc.exe|loadordc64.exe|lockapp.exe|logonsessions.exe|logonsessions64.exe|lsaiso.exe|lsass.exe|makecab.exe|mavinject.exe|mftrace.exe|microsoftedge.exe|microsoftedgecp.exe|microsoftedgesh.exe|msbuild.exe|msconfig.exe|msdeploy.exe|msdt.exe|msdtc.exe|mshta.exe|msiexec.exe|msxsl.exe|netsh.exe|nlnotes.exe|nltest.exe|notes.exe|notmyfault.exe|notmyfault64.exe|notmyfaultc.exe|notmyfaultc64.exe|ntfsinfo.exe|ntfsinfo64.exe|ntoskrnl.exe|nvudisp.exe|nvuhda6.exe|odbcconf.exe|openwith.exe|pagedfrg.exe|pcalua.exe|pcwrun.exe|pendmoves.exe|pendmoves64.exe|pipelist.exe|pipelist64.exe|powershell.exe|presentationhost.exe|print.exe|procdump.exe|procdump64.exe|procexp.exe|procexp64.exe|procmon.exe|psexec.exe|psexec64.exe|psfile.exe|psfile64.exe|psgetsid.exe|psgetsid64.exe|psinfo.exe|psinfo64.exe|pskill.exe|pskill64.exe|pslist.exe|pslist64.exe|psloggedon.exe|psloggedon64.exe|psloglist.exe|psloglist64.exe|pspasswd.exe|pspasswd64.exe|psping.exe|psping64.exe|psr.exe|psservice.exe|psservice64.exe|psshutdown.exe|pssuspend.exe|pssuspend64.exe|pwsh.exe|rammap.exe|rcsi.exe|reg.exe|regasm.exe|regdelnull.exe|regdelnull64.exe|regedit.exe|register-cimprovider|regjump.exe|regsvcs.exe|regsvr32.exe|replace.exe|robocopy.exe|roccat_swarm.exe|rpcping.exe|rundll32.exe|runonce.exe|runscripthelper.exe|runtimebroker.exe|sc.exe|scriptrunner.exe|sdelete.exe|sdelete64.exe|sdiagnhost.exe|searchfilterhost.exe|searchindexer.exe|searchprotocolhost.exe|securityhealthservice.exe|services.exe|settingsynchost.exe|sgrmbroker.exe|sigcheck.exe|sigcheck64.exe|sihost.exe|smartscreen.exe|smss.exe|splwow64.exe|spoolsv.exe|sppsvc.exe|sqldumper.exe|sqlps.exe|sqltoolsps.exe|streams.exe|streams64.exe|surfacecolorservice.exe|surfaceservice.exe|svchost.exe|syncappvpublishingserver.exe|synchost.exe|sysmon.exe|sysmon64.exe|systemsettingsbroker.exe|taskhostw.exe|taskmgr.exe|tcpvcon.exe|tcpview.exe|te.exe|tracker.exe|usbinst.exe|vboxdrvinst.exe|vmcompute.exe|vmmap.exe|vmms.exe|vsjitdebugger.exe|vssvc.exe|wab.exe|werfault.exe|werfaultsecure.exe|wininit.exe|winlogon.exe|winobj.exe|winword.exe|wmiapsrv.exe|wmic.exe|wmiprvse.exe|wscript.exe|wsmprovhost.exe|wuauclt.exe|wudfhost.exe|xwizard.exe"
  local l_0_12 = "activeds.dll|amsi.dll|credui.dll|dbgeng.dll|dbghelp.dll|diagtrack.dll|dpx.dll|dui70.dll|duser.dll|dwmapi.dll|dxgi.dll|emet.dll|fvewiz.dll|hid.dll|kernel32.dll|mfc42u.dll|oleacc.dll|secur32.dll|slc.dll|spp.dll|tapi32.dll|user32.dll|uxtheme.dll|wer.dll|winbio.dll|winbrand.dll|windowscoredeviceinfo.dll|winmm.dll|winsta.dll|wldp.dll|wtsapi32.dll|xmllite.dll|unidrv.dll|"
  local l_0_13 = false
  local l_0_14 = false
  local l_0_15 = false
  local l_0_16 = false
  local l_0_17 = false
  local l_0_18 = false
  local l_0_19 = false
  l_0_10 = l_0_10:gsub("%.exe%.mui", ".exe")
  if l_0_9:find("\\windows\\winsxs\\", 1, true) or l_0_9:find("\\\\$windows.~bt\\\\", 1, true) or l_0_9:find("\\windows\\softwaredistribution\\", 1, true) or l_0_9:find("\\windows.old\\", 1, true) or l_0_9:find("\\\\winsehotfix\\hotfixes\\", 1, true) or l_0_9:find("\\harddiskvolume.?.?.?\\windows") or l_0_9:find("\\windows\\assembly\\nativeimages", 1, true) or l_0_9:find("windows\\ccm", 1, true) then
    (mp.set_mpattribute)("Lua:PeInExcludedOsPath")
    l_0_14 = true
  end
  if l_0_9:find(":\\windows\\system32", 1, true) or l_0_9:find(":\\windows\\syswow64", 1, true) then
    (mp.set_mpattribute)("Lua:PeInSystemFolder")
    l_0_15 = true
    if l_0_9:find("\\spool", 1, true) then
      l_0_15 = false
      l_0_19 = true
      ;
      (mp.set_mpattribute)("Lua:PeInSpoolFolder")
    end
  end
  if l_0_9:find("c:\\program files\\", 1, true) or l_0_9:find("c:\\program files (x86)\\", 1, true) then
    (mp.set_mpattribute)("Lua:PeInProgramsFolder")
    l_0_16 = true
  end
  local l_0_20 = StringSplit(l_0_10, ".")
  local l_0_21 = l_0_20[#l_0_20]
  if #l_0_20 == 1 then
    (mp.set_mpattribute)("Lua:PeFileExtension!nil")
  else
    if l_0_21 ~= nil and (#l_0_21 <= 5 or not l_0_21:sub(-5)) then
      (mp.set_mpattribute)("Lua:PeFileExtension!" .. l_0_21)
    end
  end
  ;
  (mp.set_mpattribute)("Lua:PeFSFileName!" .. l_0_10)
  local l_0_22 = l_0_0.InternalName
  if l_0_22 then
    l_0_22 = (string.lower)(l_0_22)
    l_0_22 = l_0_22:gsub("%.exe%.mui", ".exe")
    ;
    (mp.set_mpattribute)("Lua:PeInternalName!" .. l_0_22)
    if l_0_22 ~= l_0_10 then
      (mp.set_mpattribute)("Lua:PeInternalNameDiffFromFileName")
    else
      ;
      (mp.set_mpattribute)("Lua:PeInternalNameMatchedFileName")
    end
  else
    ;
    (mp.set_mpattribute)("Lua:PeInternalName!nil")
  end
  local l_0_23 = l_0_0.OriginalFilename
  if l_0_23 then
    l_0_23 = (string.lower)(l_0_23)
    l_0_23 = l_0_23:gsub("%.exe%.mui", ".exe")
    ;
    (mp.set_mpattribute)("Lua:PeOriginalName!" .. l_0_23)
    if l_0_23 ~= l_0_10 then
      (mp.set_mpattribute)("Lua:PeOriginalNameDiffFromFileName")
      l_0_13 = true
    else
      ;
      (mp.set_mpattribute)("Lua:PeOriginalNameMatchedFileName")
    end
  else
    l_0_23 = "nil"
    ;
    (mp.set_mpattribute)("Lua:PeOriginalName!nil")
  end
  local l_0_24 = false
  local l_0_25 = "|" .. l_0_23
  local l_0_26 = "|" .. l_0_10
  if (l_0_23 ~= "" and l_0_11:find(l_0_25)) or l_0_11:find(l_0_26) then
    l_0_24 = true
  end
  if (l_0_23 ~= "" and l_0_12:find(l_0_25)) or l_0_12:find(l_0_26) then
    l_0_24 = true
  end
  if l_0_19 or l_0_24 and not l_0_14 then
    if (mp.IsTrustedFile)() then
      l_0_18 = true
      ;
      (mp.set_mpattribute)("Lua:PeIsTrustedLolbin")
      ;
      (mp.set_mpattribute)("Lua:PeIsTrustedLolbin!" .. l_0_23)
      ;
      (mp.set_mpattribute)("Lua:PeIsTrustedLolbinFile!" .. l_0_10)
    else
      ;
      (mp.set_mpattribute)("Lua:PeUntrustedLolbin")
      ;
      (mp.set_mpattribute)("Lua:PeUnTrustedLolbin!" .. l_0_23)
      ;
      (mp.set_mpattribute)("Lua:PeUnTrustedLolbinFile!" .. l_0_10)
      ;
      (mp.set_mpattribute)("Lua:PeUntrustedLolbinExt!" .. l_0_21)
    end
  end
  local l_0_27 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
  do
    if l_0_27 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
      local l_0_28 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
      l_0_17 = true
      ;
      (mp.set_mpattribute)("Lua:NewPeFile")
      ;
      (mp.set_mpattribute)("Lua:NewPeFile!" .. l_0_10)
      if #l_0_28 > 38 then
        (mp.set_mpattribute)("Lua:RtpProcNameTooLong")
      else
        ;
        (mp.set_mpattribute)("Lua:NewPeFileWrittenBy!" .. l_0_28)
      end
      if l_0_28:find("rufus", 1, true) then
        (mp.set_mpattribute)("Lua:NewPeFileWrittenBy!rufus")
      end
      if l_0_28 == "mscorsvw.exe" and (l_0_10:match("%.ni%.exe$") or l_0_10:match("%.ni%.dll$")) then
        (mp.set_mpattribute)("Lua:CleanFileWrittenBy!mscorsvw.exe")
      else
        if (mp.get_mpattribute)("Lua:PeOriginalNameDiffFromFileName") then
          (mp.set_mpattribute)("MpDisableCaching")
        end
      end
    end
    local l_0_29 = "dll|ocx"
    if l_0_17 and not l_0_15 and not l_0_14 and not l_0_18 and not l_0_16 and l_0_13 and l_0_29:find(l_0_21) then
      (mp.set_mpattribute)("Lua:PeMonitorForSideload")
    end
    return mp.INFECTED
  end
end

