-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/14f4194407506 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
  local l_0_0, l_0_1 = nil, nil
  l_0_1 = (this_sigattrlog[3]).utf8p2
  local l_0_2 = nil
else
end
do
  -- DECOMPILER ERROR at PC46: Overwrote pending register: R0 in 'AssignReg'

  if (not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p2 == nil or (this_sigattrlog[5]).matched) and (this_sigattrlog[5]).utf8p2 ~= nil then
    local l_0_3, l_0_4 = (this_sigattrlog[4]).utf8p1, (this_sigattrlog[4]).utf8p2
    l_0_4 = (this_sigattrlog[5]).utf8p2
    local l_0_5 = nil
  else
  end
  do
    -- DECOMPILER ERROR at PC80: Overwrote pending register: R0 in 'AssignReg'

    if (not (this_sigattrlog[6]).matched or (this_sigattrlog[6]).utf8p2 == nil or (this_sigattrlog[7]).matched) and (this_sigattrlog[7]).utf8p2 ~= nil then
      local l_0_6, l_0_7 = (this_sigattrlog[6]).utf8p1, (this_sigattrlog[6]).utf8p2
      l_0_7 = (this_sigattrlog[7]).utf8p2
      local l_0_8 = nil
    else
    end
    do
      -- DECOMPILER ERROR at PC114: Overwrote pending register: R0 in 'AssignReg'

      if (not (this_sigattrlog[8]).matched or (this_sigattrlog[8]).utf8p2 == nil or (this_sigattrlog[9]).matched) and (this_sigattrlog[9]).utf8p2 ~= nil then
        local l_0_9, l_0_10, l_0_12, l_0_13, l_0_15, l_0_17 = (this_sigattrlog[8]).utf8p1, (this_sigattrlog[8]).utf8p2
        l_0_12 = this_sigattrlog
        l_0_12 = l_0_12[9]
        l_0_10 = l_0_12.utf8p2
        local l_0_11, l_0_14, l_0_16, l_0_18 = nil
      else
      end
      do
        if ((this_sigattrlog[10]).matched and (this_sigattrlog[10]).utf8p2 ~= nil and (this_sigattrlog[10]).utf8p1 == nil) or (this_sigattrlog[10]).utf8p2 == nil then
          return mp.CLEAN
        end
        -- DECOMPILER ERROR at PC142: Confused about usage of register: R1 in 'UnsetPending'

        local l_0_19 = nil
        local l_0_20 = nil
        local l_0_21 = (this_sigattrlog[10]).utf8p2
        repeat
          -- DECOMPILER ERROR at PC151: Overwrote pending register: R4 in 'AssignReg'

          -- DECOMPILER ERROR at PC154: Confused about usage of register: R4 in 'UnsetPending'

        until 0 == 0
        local l_0_22 = 0 + 0
        l_0_22 = l_0_22 + R4_PC165
        -- DECOMPILER ERROR at PC168: Confused about usage of register: R5 in 'UnsetPending'

        _ = (string.gsub)(l_0_21, "{.-}", "")
        l_0_22 = l_0_22 + R4_PC165
        if l_0_22 < 4 then
          return mp.CLEAN
        end
        -- DECOMPILER ERROR at PC184: Overwrote pending register: R2 in 'AssignReg'

        if not (string.find)(l_0_21, "j.-n.-d.-i.-:.-l.-d.-a.-p.-:") then
          return mp.CLEAN
        end
        local l_0_23 = R4_PC165
        local l_0_24 = nil
        ;
        (nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), {["[" .. l_0_19 .. "]"] = "[" .. l_0_20 .. "]"})
        return mp.INFECTED
      end
    end
  end
end

