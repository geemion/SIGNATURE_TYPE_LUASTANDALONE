-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/11041eeb776ce 

-- params : ...
-- function num : 0
if not (this_sigattrlog[3]).matched or not (this_sigattrlog[6]).matched then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC15: Overwrote pending register: R0 in 'AssignReg'

local l_0_0 = nil
-- DECOMPILER ERROR at PC18: Overwrote pending register: R1 in 'AssignReg'

local l_0_1 = nil
local l_0_2 = "user-agent"
local l_0_3 = 100
local l_0_4 = 3
local l_0_5, l_0_6 = pcall(MpCommon.RollingQueueCreate, l_0_2, l_0_3, l_0_4, 1)
if not l_0_5 then
  return mp.CLEAN
end
l_0_5 = pcall(MpCommon.RollingQueueAppend, l_0_2, l_0_0, l_0_1, l_0_4)
if not l_0_5 then
  return mp.CLEAN
end
return mp.INFECTED

