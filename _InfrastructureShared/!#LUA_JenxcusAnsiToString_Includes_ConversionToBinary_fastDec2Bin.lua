-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_JenxcusAnsiToString_Includes_ConversionToBinary_fastDec2Bin 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if (mp.get_mpattribute)("LUA:VBS/JenxcusAnsiToString1") then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC22: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (mp.get_mpattribute)("LUA:VBS/JenxcusAnsiToString2") or (mp.get_mpattribute)("LUA:VBS/JenxcusAnsiToString3") then
      local l_0_1, l_0_2 = 2
    else
    end
    if (mp.get_mpattribute)("LUA:VBS/JenxcusAnsiToString4") then
      do return mp.CLEAN end
      local l_0_3 = 4
      ;
      (mp.readprotection)(false)
      local l_0_4 = nil
      if (mp.readfile)(0, (mp.getfilesize)()) == nil then
        return mp.CLEAN
      end
      local l_0_5, l_0_6, l_0_7 = , nil, nil
      -- DECOMPILER ERROR at PC60: Overwrote pending register: R5 in 'AssignReg'

      -- DECOMPILER ERROR at PC63: Overwrote pending register: R3 in 'AssignReg'

      -- DECOMPILER ERROR at PC72: Overwrote pending register: R5 in 'AssignReg'

      -- DECOMPILER ERROR at PC73: Overwrote pending register: R4 in 'AssignReg'

      -- DECOMPILER ERROR at PC74: Overwrote pending register: R3 in 'AssignReg'

      -- DECOMPILER ERROR at PC75: Overwrote pending register: R3 in 'AssignReg'

      -- DECOMPILER ERROR at PC84: Overwrote pending register: R4 in 'AssignReg'

      -- DECOMPILER ERROR at PC85: Overwrote pending register: R5 in 'AssignReg'

      -- DECOMPILER ERROR at PC86: Overwrote pending register: R3 in 'AssignReg'

      -- DECOMPILER ERROR at PC87: Overwrote pending register: R3 in 'AssignReg'

      -- DECOMPILER ERROR at PC96: Overwrote pending register: R4 in 'AssignReg'

      -- DECOMPILER ERROR at PC97: Overwrote pending register: R3 in 'AssignReg'

      -- DECOMPILER ERROR at PC98: Overwrote pending register: R3 in 'AssignReg'

      if ((l_0_3 ~= 1 or l_0_3 == 2) and l_0_3 ~= 3) or l_0_3 == 4 then
        do return mp.CLEAN end
        if #l_0_7 < 3000 then
          return mp.CLEAN
        end
        local l_0_8, l_0_9 = nil, nil
        -- DECOMPILER ERROR at PC116: Overwrote pending register: R7 in 'AssignReg'

        if l_0_3 == 4 then
          do
            local l_0_10, l_0_12 = nil, (string.gsub)(l_0_8, "([%.%$%%%^%+%-%*%?%(%)%{%}%[%]])", "%%%1")
            if l_0_7:match("^%d-" .. l_0_12 .. "%d-" .. l_0_12 .. "%d-" .. l_0_12 .. "%d-" .. l_0_12 .. "%d-" .. l_0_12 .. "%d-") == nil then
              return mp.CLEAN
            end
            -- DECOMPILER ERROR at PC151: Overwrote pending register: R6 in 'AssignReg'

            local l_0_11 = l_0_10
            local l_0_13 = mp.vfo_add_buffer
            l_0_13(l_0_9:sub(1, l_0_11), "[JenxcusToStr]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
            l_0_13 = mp
            l_0_13 = l_0_13.CLEAN
            return l_0_13
          end
        end
      end
    end
  end
end

