-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/314b30824d034_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = 50000000
if l_0_0 < (bm.GetSignatureMatchDuration)() then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1552.001", "CredentialAccess")
return mp.INFECTED

