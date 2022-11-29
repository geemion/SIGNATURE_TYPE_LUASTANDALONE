-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/85b3e1a6b5e2_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_1) do
  if l_0_6.image_path ~= nil and (string.find)((string.lower)(l_0_6.image_path), "\\rundll32.exe", 1, true) then
    local l_0_7 = (mp.bitand)(l_0_6.reason_ex, bm.RELATIONSHIP_INJECTION)
    if l_0_7 == bm.RELATIONSHIP_INJECTION then
      TrackPidAndTechniqueBM(l_0_6.ppid, "T1055.002", "processinjection_target")
    end
  end
end
return mp.INFECTED

