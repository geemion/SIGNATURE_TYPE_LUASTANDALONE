-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41b304ea6ce0_Includes_TechniqueTrac 

-- params : ...
-- function num : 0
local l_0_0 = "remote_file_created_taint"
local l_0_1 = {}
local l_0_2 = {}
-- DECOMPILER ERROR at PC5: No list found for R2 , SetList fails

local l_0_3 = {}
-- DECOMPILER ERROR at PC7: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC9: No list found for R3 , SetList fails

local l_0_4 = {}
-- DECOMPILER ERROR at PC11: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC13: No list found for R4 , SetList fails

local l_0_5 = {}
-- DECOMPILER ERROR at PC15: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC17: No list found for R5 , SetList fails

local l_0_6 = {}
-- DECOMPILER ERROR at PC19: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC21: No list found for R6 , SetList fails

-- DECOMPILER ERROR at PC22: No list found for R1 , SetList fails

-- DECOMPILER ERROR at PC25: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC26: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC29: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC30: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC31: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC34: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC35: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC38: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC47: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC50: Overwrote pending register: R5 in 'AssignReg'

if (not l_0_3 or l_0_2 ~= nil) and l_0_3 ~= nil and l_0_5 ~= nil and l_0_4 ~= nil and l_0_5 ~= nil then
  for i_1,i_2 in l_0_5 do
    local l_0_10 = l_0_9[1]
    local l_0_11 = l_0_9[2]
    if (string.find)(l_0_4, l_0_10, 1, true) and (string.find)(l_0_3.command_line, l_0_11, 1, true) then
      return mp.CLEAN
    end
  end
  -- DECOMPILER ERROR at PC79: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC80: Overwrote pending register: R6 in 'AssignReg'

  l_0_5(l_0_6, l_0_0, 3600)
  TrackPidAndTechniqueBM("BM", "T1105", "CommandAndControl")
  AppendToRollingQueue("queue_pid_taintfactory_a", l_0_3.ppid, 1, 600)
  local l_0_12, l_0_13 = nil
  l_0_13 = (bm.get_process_relationships)(l_0_3.ppid)
  l_0_12 = l_0_12(l_0_13)
  for l_0_17,l_0_18 in l_0_12 do
    local l_0_17, l_0_18 = nil
    l_0_17 = bm
    l_0_17 = l_0_17.add_related_process
    l_0_18 = l_0_16.ppid
    l_0_17(l_0_18)
    l_0_17 = TrackPidAndTechniqueBM
    l_0_18 = l_0_16.ppid
    l_0_17(l_0_18, "T1105", "CommandAndControl")
  end
  do return mp.INFECTED end
  -- DECOMPILER ERROR at PC117: Confused about usage of register R8 for local variables in 'ReleaseLocals'

end
-- DECOMPILER ERROR at PC117: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC118: Overwrote pending register: R3 in 'AssignReg'

do return l_0_3 end
-- DECOMPILER ERROR at PC120: Confused about usage of register R7 for local variables in 'ReleaseLocals'


