-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6ab32679813f 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC23: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1, l_0_2 = (this_sigattrlog[2]).utf8p2
    end
    -- DECOMPILER ERROR at PC24: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC31: Confused about usage of register: R0 in 'UnsetPending'

    local l_0_3 = nil
    local l_0_4 = nil
    if (string.find)(((mp.GetExecutablesFromCommandLine)(l_0_1))[2], ",", 1, true) == nil then
      return mp.CLEAN
    end
    local l_0_5 = nil
    ;
    (mp.ReportLowfi)((string.sub)(l_0_4[2], 1, (string.find)(((mp.GetExecutablesFromCommandLine)(l_0_1))[2], ",", 1, true) - 1), 2300354182)
    return mp.INFECTED
  end
end

