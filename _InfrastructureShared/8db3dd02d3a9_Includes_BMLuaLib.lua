-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8db3dd02d3a9_Includes_BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    bm_AddRelatedFileFromCommandLine(l_0_0, nil, nil, 1)
  end
  local l_0_3 = nil
  if (MpCommon.GetPersistContextNoPath)("ServiceCreationScript") then
    for l_0_7,l_0_8 in ipairs((MpCommon.GetPersistContextNoPath)("ServiceCreationScript")) do
      local l_0_4 = nil
      -- DECOMPILER ERROR at PC32: Confused about usage of register: R6 in 'UnsetPending'

      if (sysio.IsFileExists)(R6_PC32) then
        (bm.add_related_file)(R6_PC32)
      end
    end
  end
  do
    return mp.INFECTED
  end
end

