-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/19fd7054780b4_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  if l_0_1:find("windows\\ccm\\", 1, true) then
    return mp.CLEAN
  end
  local l_0_2 = l_0_1:match("([^\\]+)$")
  local l_0_3 = {}
  l_0_3["ir_agent.exe"] = true
  l_0_3["gpscript.exe"] = true
  l_0_3["xendesktopvdasetup.exe"] = true
  l_0_3["icaconfigconsole.exe"] = true
  l_0_3["matrix42uemagentupdate.exe"] = true
  l_0_3["sia2.exe"] = true
  l_0_3["smsswd.exe"] = true
  l_0_3["tsmanager.exe"] = true
  l_0_3["ruby.exe"] = true
  l_0_3["bpbkar32.exe"] = true
  if l_0_3[l_0_2] then
    return mp.CLEAN
  end
end
do
  TrackPidAndTechnique("CMDHSTR", "T1003.005", "creddiscovery")
  if IsDetectionThresholdMet("CMDHSTR") then
    return mp.LOWFI
  end
  return mp.CLEAN
end

