-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/Leviathon 

-- params : ...
-- function num : 0
Infrastructure_ScanLeviathon = function()
  -- function num : 0_0
  if (versioning.IsSeville)() then
    (MpCommon.SetGlobalMpAttribute)("LeviathonKeyScan")
    ;
    (MpDetection.ScanResource)("regkeyvalue://HKLM\\SOFTWARE\\Microsoft\\Windows Advanced Threat Protection\\\\OnboardedInfo")
    ;
    (MpCommon.DeleteGlobalMpAttribute)("LeviathonKeyScan")
  end
end


