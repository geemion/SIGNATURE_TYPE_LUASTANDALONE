-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/53b36aa81b7e_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[2]).utf8p2
if (string.find)(l_0_0, "activate", 1, true) then
  TrackPidAndTechniqueBM("BM", "T1548.004", "PrivilegeEscalation-CredentialPopupWithinApp")
else
  TrackPidAndTechniqueBM("BM", "T1548.004", "PrivilegeEscalation-CredentialPopup")
end
return mp.INFECTED

