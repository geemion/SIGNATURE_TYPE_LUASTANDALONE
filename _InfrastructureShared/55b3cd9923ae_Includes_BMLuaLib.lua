-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55b3cd9923ae_Includes_BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC18: Overwrote pending register: R1 in 'AssignReg'

  do
    if (this_sigattrlog[4]).matched then
      local l_0_1 = nil
    end
    local l_0_2 = nil
    if getMalwareManifest() ~= nil then
      for l_0_6,l_0_7 in ipairs(getMalwareManifest()) do
        local l_0_3, l_0_4 = nil
        -- DECOMPILER ERROR at PC27: Confused about usage of register: R7 in 'UnsetPending'

        if l_0_2 == R7_PC27 then
          return mp.INFECTED
        end
        if l_0_3 ~= nil then
          if (string.lower)(l_0_3.utf8p1) ~= nil and (string.find)((string.lower)(l_0_3.utf8p1), R7_PC27, 1, true) then
            (bm.add_related_file)(R7_PC27)
            return mp.INFECTED
          end
          if (string.find)((string.lower)(l_0_3.utf8p2), l_0_9, 1, true) then
            (bm.add_related_file)(l_0_9)
            return mp.INFECTED
          end
        end
      end
    end
    do
      return mp.CLEAN
    end
  end
end

