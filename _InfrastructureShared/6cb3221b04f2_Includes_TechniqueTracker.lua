-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6cb3221b04f2_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_1) do
  if l_0_6.image_path ~= nil and l_0_6.ppid ~= nil then
    TrackPidAndTechniqueBM(l_0_6.ppid, "T1218", "outlook_monarch_childproc")
  end
end
return mp.CLEAN

