-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/Pokavampo_Includes_GenericRepairHelpers 

-- params : ...
-- function num : 0
local l_0_0 = (MpDetection.GetCurrentThreat)()
if l_0_0.Name == "SoftwareBundler:Win32/Pokavampo" then
  for l_0_4,l_0_5 in pairs(l_0_0.Resources) do
    if l_0_5.Schema == "file" and (crypto.bitand)(l_0_5.Type, MpCommon.MPRESOURCE_TYPE_CONCRETE) == MpCommon.MPRESOURCE_TYPE_CONCRETE then
      Infrastructure_DetectionReportUninstallEntriesFromFolder(805306499, l_0_5.Path)
      Infrastructure_DetectionReportFolder(805306499, l_0_5.Path, true)
      local l_0_6 = Infrastructure_GetEnvironmentPath("%common_appdata%")
      if l_0_6 then
        (MpDetection.ScanResource)("folder://" .. l_0_6 .. "\\Microsoft\\Network\\Dsq\\network")
      end
      local l_0_7 = (MpCommon.ExpandEnvironmentVariables)("%program_files%")
      if l_0_7 then
        local l_0_8 = (sysio.FindFolders)(l_0_7, "*-*-*", 0)
        for l_0_12,l_0_13 in pairs(l_0_8) do
          (MpDetection.ScanResource)("folder://" .. l_0_13)
        end
      end
      do
        l_0_8 = MpCommon
        l_0_8 = l_0_8.ExpandEnvironmentVariables
        l_0_8 = l_0_8("%program_filesx86%")
        local l_0_14 = nil
        if l_0_8 then
          l_0_14 = sysio
          l_0_14 = l_0_14.FindFolders
          l_0_14 = l_0_14(l_0_8, "*-*-*", 0)
          local l_0_15 = nil
          l_0_15 = pairs
          l_0_15 = l_0_15(l_0_14)
          for l_0_19,l_0_20 in l_0_15 do
            local l_0_20 = nil
            l_0_20 = MpDetection
            l_0_20 = l_0_20.ScanResource
            l_0_20("folder://" .. l_0_19)
          end
        end
        do
          -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  -- DECOMPILER ERROR at PC94: Confused about usage of register R5 for local variables in 'ReleaseLocals'

end

