-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9cb3a3ea6768_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil and (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
  local l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p2)
  local l_0_2 = (string.lower)((this_sigattrlog[3]).utf8p2)
  local l_0_3 = (string.match)(l_0_0, "\\classes\\(.+)\\shell")
  if l_0_2 ~= l_0_3 then
    return mp.CLEAN
  end
  if (string.len)(l_0_1) < 4 then
    return mp.CLEAN
  end
  if (string.find)(l_0_1, "%1", 1, true) then
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM("BM", "T1548.002", "uac_bypass_src")
  local l_0_4 = {}
  ;
  (table.insert)(l_0_4, l_0_1)
  if (versioning.IsSeville)() and (versioning.GetCloudBlockLevel)() >= 4 then
    (MpCommon.SetPersistContextNoPath)("UACBypassExp.X!ShieldUp", l_0_4, 300)
    return mp.INFECTED
  end
  ;
  (MpCommon.SetPersistContextNoPath)("UACBypassExp.X!regset", l_0_4, 10)
  return mp.INFECTED
end
do
  return mp.CLEAN
end

