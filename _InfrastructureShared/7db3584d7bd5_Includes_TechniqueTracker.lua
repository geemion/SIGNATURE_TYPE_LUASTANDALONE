-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7db3584d7bd5_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = ""
if (this_sigattrlog[3]).matched then
  l_0_0 = (this_sigattrlog[3]).utf8p1
else
  if (this_sigattrlog[4]).matched then
    l_0_0 = (this_sigattrlog[4]).utf8p1
  else
    if (this_sigattrlog[5]).matched then
      l_0_0 = (this_sigattrlog[5]).utf8p1
    else
      if (this_sigattrlog[6]).matched then
        l_0_0 = (this_sigattrlog[6]).utf8p1
      end
    end
  end
end
if l_0_0:match("/Users/.*/Library/") ~= nil then
  TrackPidAndTechniqueBM("BM", "T1546.004", "profile-persistence")
  return mp.INFECTED
end
return mp.CLEAN

