-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/81b3c887a228_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  local l_0_7 = l_0_6.image_path
  if l_0_7 ~= nil then
    l_0_7 = (string.lower)(l_0_7)
    if l_0_7:find("windows\\ccm\\", 1, true) then
      return mp.CLEAN
    end
    if l_0_7:find("tripwire.*\\twexec%.exe") then
      return mp.CLEAN
    end
    if l_0_7:find("ruby%.exe", 1, true) then
      return mp.CLEAN
    end
    if l_0_7:find("verodin_backend%.exe", 1, true) then
      return mp.CLEAN
    end
  end
  if l_0_6.ppid then
    TrackPidAndTechniqueBM(l_0_6.ppid, "T1003.005", "credentialdumping")
  end
end
return mp.INFECTED

