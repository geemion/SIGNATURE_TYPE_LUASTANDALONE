-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55b317e5eb79 

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
      local l_0_1, l_0_2 = (this_sigattrlog[2]).utf8p2
    end
    -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC47: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil then
      local l_0_3 = nil
      local l_0_4 = ((string.lower)((string.sub)(l_0_1, -32))):match("\\([^\\]+)$")
      if ({["pcpitstopscheduleservice.exe"] = true})[l_0_4] then
        return mp.CLEAN
      end
      local l_0_5 = nil
      for l_0_9,l_0_10 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_3)) do
        local l_0_6 = nil
        -- DECOMPILER ERROR at PC72: Confused about usage of register: R8 in 'UnsetPending'

        if (sysio.IsFileExists)(R8_PC72) then
          (bm.add_related_file)(R8_PC72)
        end
      end
    end
    do
      l_0_4 = mp
      l_0_4 = l_0_4.INFECTED
      return l_0_4
    end
  end
end

