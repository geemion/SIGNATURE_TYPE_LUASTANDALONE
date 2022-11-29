-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/40b3240c22c3 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 == nil then
  return mp.CLEAN
end
if (mp.IsKnownFriendlyFile)(l_0_0, true, true) == true then
  return mp.CLEAN
end
local l_0_1 = {}
l_0_1["dat.client.exe"] = true
l_0_1["mysqlworkbench.exe"] = true
l_0_1["vida.desktop.exe"] = true
l_0_1["dragonfly.exe"] = true
l_0_1["xrmtoolbox.exe"] = true
l_0_1["java.exe"] = true
l_0_1["idea64.exe"] = true
l_0_1["eclipse-inst.exe"] = true
l_0_1["cosmosworker.exe"] = true
l_0_1["bt.saas.agentdesktop.exe"] = true
l_0_1["codemeterruntime.exe"] = true
l_0_1["aetherclientx.exe"] = true
if l_0_1[(string.lower)(l_0_0:match("\\([^\\]+)$"))] then
  return mp.CLEAN
end
return mp.INFECTED

