-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b1b32f901ba4_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched == false or (this_sigattrlog[1]).timestamp == nil then
  return mp.CLEAN
end
if (this_sigattrlog[2]).matched == false or (this_sigattrlog[2]).timestamp == nil then
  return mp.CLEAN
end
local l_0_0 = (this_sigattrlog[1]).timestamp
local l_0_1 = (this_sigattrlog[2]).timestamp
if l_0_1 < l_0_0 then
  return mp.CLEAN
end
local l_0_2 = l_0_1 - l_0_0
if l_0_2 > 3000000000 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1548.002", "uac_bypass_src")
return mp.INFECTED

