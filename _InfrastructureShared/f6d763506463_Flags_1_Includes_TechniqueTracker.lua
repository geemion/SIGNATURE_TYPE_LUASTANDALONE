-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f6d763506463_Flags_1_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
do
  if l_0_0 then
    local l_0_1 = (string.lower)(l_0_0.image_path)
    if (string.find)(l_0_1, "\\programdata\\microsoft\\azurewatson\\0\\awdumpifeo.exe", 1, true) or (string.find)(l_0_1, "\\windows\\system32\\werfault.exe", 1, true) or (string.find)(l_0_1, "\\windows\\syswow64\\werfault.exe", 1, true) then
      return mp.CLEAN
    end
  end
  TrackPidAndTechnique("CMDHSTR", "T1003.001", "credentialdumping_concrete", 86400)
  return mp.INFECTED
end

