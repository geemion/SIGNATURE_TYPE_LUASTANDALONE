-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/117b3a58093c2 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC29: Overwrote pending register: R1 in 'AssignReg'

  do
    if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
      local l_0_1 = nil
    end
    -- DECOMPILER ERROR at PC42: Overwrote pending register: R2 in 'AssignReg'

    do
      if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
        local l_0_2 = nil
      end
      local l_0_3, l_0_4 = , nil
      for l_0_8,l_0_9 in ipairs((bm.get_process_relationships)()) do
        local l_0_5, l_0_6, l_0_7 = nil
        -- DECOMPILER ERROR at PC50: Confused about usage of register: R9 in 'UnsetPending'

        if R9_PC50.image_path ~= nil and ((string.find)(R9_PC50.image_path, "/installd", -9, true) or (string.find)(R9_PC50.image_path, "/package_script_service", -23, true)) and (string.find)(l_0_4, l_0_3, 1, true) and (string.find)(l_0_5, l_0_3, 1, true) then
          return mp.INFECTED
        end
      end
      return mp.CLEAN
    end
  end
end

