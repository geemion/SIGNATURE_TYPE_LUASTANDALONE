-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4ab3a2257cae_Includes_LuaFuncHelper,BMLuaLib 

-- params : ...
-- function num : 0
local l_0_0 = "remote_file_created_taint"
local l_0_1 = "queue_pid_taintfactory_b"
local l_0_2, l_0_3, l_0_4 = nil, nil, nil
if (this_sigattrlog[1]).matched then
  l_0_3 = (this_sigattrlog[1]).utf8p1
  l_0_2 = (this_sigattrlog[1]).utf8p2
  l_0_4 = (this_sigattrlog[1]).ppid
end
if not l_0_2 or not l_0_3 or not l_0_4 then
  return mp.CLEAN
end
local l_0_5, l_0_6 = IsKeyInRollingQueue(l_0_1, l_0_4, true)
if l_0_5 or isTainted(l_0_2, l_0_0) then
  taint(l_0_3, l_0_0, 3600)
end
return mp.CLEAN

