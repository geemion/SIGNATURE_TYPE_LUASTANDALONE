-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/115b3d1bc668b 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10, l_0_11 = nil
  end
  -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC47: Confused about usage of register: R0 in 'UnsetPending'

  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).wp2 == nil or (string.lower)((this_sigattrlog[2]).utf8p2) ~= nil then
    if (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "--lm", 1, true) and (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "--nt", 1, true) then
      return mp.INFECTED
    else
      -- DECOMPILER ERROR at PC60: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC69: Confused about usage of register: R0 in 'UnsetPending'

      if (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "-c ", 1, true) and (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "-t ", 1, true) then
        return mp.INFECTED
      else
        -- DECOMPILER ERROR at PC82: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC91: Confused about usage of register: R0 in 'UnsetPending'

        if (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "-c ", 1, true) and (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "-l ", 1, true) then
          return mp.INFECTED
        else
          -- DECOMPILER ERROR at PC104: Confused about usage of register: R0 in 'UnsetPending'

          -- DECOMPILER ERROR at PC113: Confused about usage of register: R0 in 'UnsetPending'

          if (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "-u ", 1, true) and (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "-t ", 1, true) then
            return mp.INFECTED
          else
            -- DECOMPILER ERROR at PC126: Confused about usage of register: R0 in 'UnsetPending'

            -- DECOMPILER ERROR at PC135: Confused about usage of register: R0 in 'UnsetPending'

            if (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "-u ", 1, true) and (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "-l ", 1, true) then
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
  return mp.CLEAN
end

