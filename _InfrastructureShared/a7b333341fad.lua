-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a7b333341fad 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p2 ~= nil then
      local l_0_1 = (this_sigattrlog[2]).utf8p2
    else
    end
    -- DECOMPILER ERROR at PC68: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p2 == nil or (this_sigattrlog[5]).matched) and (this_sigattrlog[5]).utf8p2 ~= nil then
        local l_0_2, l_0_3 = (this_sigattrlog[4]).utf8p2
      end
      -- DECOMPILER ERROR at PC69: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC73: Confused about usage of register: R0 in 'UnsetPending'

      if l_0_2 ~= nil then
        local l_0_4 = nil
        for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_2)) do
          local l_0_5 = nil
          -- DECOMPILER ERROR at PC81: Confused about usage of register: R6 in 'UnsetPending'

          R6_PC81 = (mp.ContextualExpandEnvironmentVariables)(R6_PC81)
          if (sysio.IsFileExists)(R6_PC81) then
            (bm.add_related_file)(R6_PC81)
          end
        end
      end
      do
        return mp.INFECTED
      end
    end
  end
end

