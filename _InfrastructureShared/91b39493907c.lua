-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/91b39493907c 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_2, l_0_3, l_0_5, l_0_6, l_0_7, l_0_8, l_0_10, l_0_11, l_0_12, l_0_13, l_0_15, l_0_16, l_0_17, l_0_18, l_0_20, l_0_21, l_0_22, l_0_23, l_0_24, l_0_25, l_0_26, l_0_27, l_0_28, l_0_29, l_0_30, l_0_31, l_0_32, l_0_33, l_0_34, l_0_35, l_0_36, l_0_37, l_0_38 = nil, nil, nil, nil, nil
do
  if (this_sigattrlog[1]).matched then
    local l_0_4 = nil
    -- DECOMPILER ERROR at PC10: Confused about usage of register: R4 in 'UnsetPending'

    if (this_sigattrlog[1]).utf8p2 ~= nil then
      l_0_4 = (this_sigattrlog[1]).utf8p2
    end
  end
  do
    if (this_sigattrlog[2]).matched then
      local l_0_9 = nil
      -- DECOMPILER ERROR at PC21: Confused about usage of register: R4 in 'UnsetPending'

    end
    do
      if (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched then
        local l_0_14 = nil
        -- DECOMPILER ERROR at PC32: Confused about usage of register: R4 in 'UnsetPending'

      end
      do
        if (this_sigattrlog[3]).utf8p2 == nil or (this_sigattrlog[4]).matched then
          local l_0_19, l_0_39 = , (this_sigattrlog[2]).utf8p2
          -- DECOMPILER ERROR at PC43: Confused about usage of register: R4 in 'UnsetPending'

        end
        -- DECOMPILER ERROR at PC48: Confused about usage of register: R2 in 'UnsetPending'

        if ((this_sigattrlog[4]).utf8p2 == nil or (this_sigattrlog[3]).utf8p2 ~= nil) and (this_sigattrlog[4]).utf8p2 ~= nil then
          local l_0_40 = nil
          -- DECOMPILER ERROR at PC51: Confused about usage of register: R3 in 'UnsetPending'

          local l_0_41 = nil
          if ((this_sigattrlog[3]).utf8p2):match("([^ ]+)$") ~= nil and ((this_sigattrlog[4]).utf8p2):match("([^ ]+)$") ~= nil and ((string.find)(l_0_40, ((this_sigattrlog[3]).utf8p2):match("([^ ]+)$"), 1, true) or (string.find)(l_0_41, ((this_sigattrlog[3]).utf8p2):match("([^ ]+)$"), 1, true)) and ((string.find)(l_0_40, ((this_sigattrlog[4]).utf8p2):match("([^ ]+)$"), 1, true) or (string.find)(l_0_41, ((this_sigattrlog[4]).utf8p2):match("([^ ]+)$"), 1, true)) then
            return mp.INFECTED
          end
        end
        do
          return mp.CLEAN
        end
      end
    end
  end
end

