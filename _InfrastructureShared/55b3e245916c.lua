-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55b3e245916c 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
  local l_0_0 = nil
  -- DECOMPILER ERROR at PC15: Overwrote pending register: R1 in 'AssignReg'

  local l_0_1 = nil
end
do
  local l_0_2, l_0_3 = nil
  -- DECOMPILER ERROR at PC34: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC37: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC46: Confused about usage of register: R2 in 'UnsetPending'

  if (not (this_sigattrlog[1]).matched or (this_sigattrlog[1]).utf8p1 == nil or (this_sigattrlog[1]).utf8p2 == nil or nil ~= nil) and nil ~= nil and l_0_2 ~= nil then
    local l_0_4 = nil
    for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)(nil)) do
      local l_0_5, l_0_6 = nil
      -- DECOMPILER ERROR at PC54: Confused about usage of register: R9 in 'UnsetPending'

      R9_PC54 = (mp.ContextualExpandEnvironmentVariables)(R9_PC54)
      if (sysio.IsFileExists)(R9_PC54) and R9_PC54 == l_0_2 and (sysio.IsFileExists)(l_0_5) then
        (bm.add_related_file)(l_0_5)
        ;
        (bm.request_SMS)(l_0_3, "m")
        ;
        (bm.add_action)("SingleProcessScan", 100)
        return mp.INFECTED
      end
    end
  end
  do
    return mp.CLEAN
  end
end

