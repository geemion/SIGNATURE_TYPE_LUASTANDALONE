-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/16db3bc324ad5 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[14]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[15]).matched or (this_sigattrlog[16]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4 = (this_sigattrlog[15]).utf8p1
    else
    end
    if (this_sigattrlog[17]).matched then
      do return mp.CLEAN end
      if (this_sigattrlog[17]).utf8p1 == nil then
        return mp.CLEAN
      end
      local l_0_5 = nil
      local l_0_6 = -1
      local l_0_7 = -1
      if (MpCommon.GetPersistContext)(l_0_5) ~= nil then
        for l_0_11,l_0_12 in ipairs((MpCommon.GetPersistContext)(l_0_5)) do
          local l_0_8 = nil
          -- DECOMPILER ERROR at PC59: Confused about usage of register: R8 in 'UnsetPending'

          if tonumber((string.match)(R8_PC59, "^Age:([0-9]+)$")) ~= nil and l_0_6 < tonumber((string.match)(R8_PC59, "^Age:([0-9]+)$")) then
            l_0_6 = tonumber((string.match)(R8_PC59, "^Age:([0-9]+)$"))
          end
          local l_0_14 = nil
          if tonumber((string.match)(l_0_13, "^Prevalence:([0-9]+)$")) ~= nil and l_0_7 < tonumber((string.match)(l_0_13, "^Prevalence:([0-9]+)$")) then
            l_0_7 = tonumber((string.match)(l_0_13, "^Prevalence:([0-9]+)$"))
          end
        end
        if l_0_6 > -1 and l_0_6 <= 1 and l_0_7 > -1 and l_0_7 <= 100 then
          return mp.INFECTED
        end
      end
      return mp.CLEAN
    end
  end
end

