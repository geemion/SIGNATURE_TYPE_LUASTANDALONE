-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/135b3eda08250 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_3, l_0_4, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10, l_0_11, l_0_12 = nil, nil, nil
do
  if (this_sigattrlog[4]).matched then
    local l_0_2 = nil
    -- DECOMPILER ERROR at PC10: Confused about usage of register: R2 in 'UnsetPending'

    if (this_sigattrlog[4]).utf8p2 ~= nil then
      l_0_2 = (this_sigattrlog[4]).utf8p2
    end
  end
  do
    if (this_sigattrlog[5]).matched then
      local l_0_5, l_0_13 = nil
      -- DECOMPILER ERROR at PC21: Confused about usage of register: R2 in 'UnsetPending'

      if (this_sigattrlog[5]).utf8p2 ~= nil then
        l_0_13 = (this_sigattrlog[5]).utf8p2
      end
    end
    -- DECOMPILER ERROR at PC22: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC24: Confused about usage of register: R1 in 'UnsetPending'

    do
      if l_0_13 ~= nil then
        local l_0_14 = nil
        if l_0_13:match("([^ ]+)$") ~= nil and (string.find)(l_0_14, l_0_13:match("([^ ]+)$"), 1, true) then
          return mp.INFECTED
        end
      end
      return mp.CLEAN
    end
  end
end

