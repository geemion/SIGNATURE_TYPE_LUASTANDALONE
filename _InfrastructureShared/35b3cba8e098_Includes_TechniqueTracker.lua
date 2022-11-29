-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/35b3cba8e098_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
if l_0_1 ~= nil then
  for l_0_5,l_0_6 in ipairs(l_0_1) do
    if l_0_6.image_path ~= nil and l_0_6.reason == bm.RELATIONSHIP_INJECTION then
      local l_0_7 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
      if (sysio.IsFileExists)(l_0_7) and not (mp.IsKnownFriendlyFile)(l_0_7, true, false) then
        (bm.add_related_file)(l_0_7)
        local l_0_8 = (bm.get_current_process_startup_info)()
        ;
        (bm.request_SMS)(l_0_8.ppid, "m+")
        ;
        (bm.add_action)("SmsAsyncScanEvent", 1)
      end
      do
        do
          local l_0_9 = (string.lower)((MpCommon.PathToWin32Path)(l_0_6.image_path))
          if (string.find)(l_0_9, "\\installutil.exe", -16, true) then
            (bm.request_SMS)(l_0_6.ppid, "h+")
            ;
            (bm.add_action)("SmsAsyncScanEvent", 1)
            ;
            (bm.trigger_sig)("InstallUtil", "WriteVM")
            TrackPidAndTechniqueBM("BM", "T1055.002", "portable_executable_injection")
            return mp.INFECTED
          end
          -- DECOMPILER ERROR at PC96: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC96: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC96: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
return mp.CLEAN

