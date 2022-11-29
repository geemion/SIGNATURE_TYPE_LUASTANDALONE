-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ebb3f9a014cc_Includes_TechniqueTracker,BMLuaLib 

-- params : ...
-- function num : 0
local l_0_2 = nil
local l_0_3 = {"program files", "windows"}
local l_0_4 = {}
local l_0_5 = false
do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    local l_0_0, l_0_1 = false
  end
  if contains(l_0_2, l_0_3) then
    return mp.CLEAN
  end
  if (this_sigattrlog[4]).matched then
    l_0_4 = parseNetworkVolumeEvent(this_sigattrlog[4])
  else
    if (this_sigattrlog[5]).matched then
      l_0_4 = parseNetworkVolumeEvent(this_sigattrlog[5])
      l_0_5 = true
    end
  end
  if l_0_4 and #l_0_4 < 0 then
    return mp.CLEAN
  end
  if tonumber(l_0_4.Bout) < 100000 then
    return mp.CLEAN
  end
  local l_0_6 = nil
  -- DECOMPILER ERROR at PC75: Unhandled construct in 'MakeBoolean' P1

  if l_0_5 and ((bm.GetOverallTrafficVolumes)())["incoming_response "] > 10000000 then
    l_0_6 = true
  end
  if ((bm.GetOverallTrafficVolumes)()).outgoing_req > 10000000 then
    l_0_6 = true
  end
  if l_0_6 then
    add_parents()
    reportRelatedBmHits()
    addOverallNetworkVolume()
    TrackPidAndTechniqueBM("BM", "T1567", "ExfilOverWeb")
    return mp.INFECTED
  end
  return mp.CLEAN
end

