-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69d7848c0e143 

-- params : ...
-- function num : 0
ParseInstrInfo = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = false
  local l_1_2 = false
  local l_1_3 = false
  local l_1_4 = false
  local l_1_5 = false
  local l_1_6 = false
  local l_1_7 = 0
  for l_1_11,l_1_12 in pairs(l_1_0) do
    -- DECOMPILER ERROR at PC38: Unhandled construct in 'MakeBoolean' P1

    if l_1_1 == false and l_1_12.opcode == 49 and (mp.bitand)(l_1_12.flags, mp.DASM_FLAG_MODRM) ~= 0 and l_1_1 == false and l_1_12.ilen == 3 and l_1_12.disp == 0 and l_1_12.immed == 0 then
      if l_1_11 ~= 1 then
        return false
      end
      l_1_3 = true
      l_1_1 = true
      l_1_7 = l_1_12.modrm
    end
    -- DECOMPILER ERROR at PC69: Unhandled construct in 'MakeBoolean' P1

    if l_1_12.opcode == 247 and l_1_3 == true and l_1_12.ilen == 3 and l_1_11 == 2 and (mp.bitand)(l_1_12.modrm, 7) == (mp.shr8)((mp.bitand)(l_1_7, 56), 3) then
      l_1_2 = true
    end
    if l_1_12.opcode == 139 and l_1_3 == true then
      if l_1_5 == true and (mp.bitand)(l_1_12.flags, mp.DASM_FLAG_DISP) ~= 0 and (l_1_12.disp == 16 or l_1_12.disp == 32 or l_1_12.disp == 48) and (mp.bitand)(l_1_12.modrm, 7) == (mp.shr8)((mp.bitand)(l_1_7, 56), 3) and l_1_11 <= 30 then
        l_1_6 = true
      end
      if l_1_4 == true and (mp.bitand)(l_1_12.flags, mp.DASM_FLAG_DISP) ~= 0 and (mp.bitand)(l_1_12.flags, mp.DASM_FLAG_MODRM) ~= 0 and l_1_12.disp == 24 and (mp.bitand)(l_1_12.modrm, 7) == (mp.shr8)((mp.bitand)(l_1_7, 56), 3) and l_1_11 <= 25 then
        l_1_7 = l_1_12.modrm
        l_1_5 = true
      end
      if l_1_12.prefx_cnt == 2 and l_1_12.disp == 96 and l_1_12.ilen == 5 and (mp.bitand)(l_1_12.flags, mp.DASM_FLAG_MODRM) ~= 0 and l_1_11 <= 20 then
        if l_1_2 == true then
          l_1_7 = l_1_12.modrm
          l_1_4 = true
        else
          if (mp.bitand)(l_1_12.modrm, 7) == (mp.shr8)((mp.bitand)(l_1_7, 56), 3) then
            l_1_7 = l_1_12.modrm
            l_1_4 = true
          end
        end
      end
    else
      if l_1_6 == true and l_1_12.opcode == 255 and (l_1_12.jtype == 4 or l_1_12.jtype == 5) then
        return true
      end
    end
  end
  return false
end

local l_0_0 = (mp.GetHSTRCallerId)()
if mp.HSTR_CALLER_SMS == l_0_0 then
  local l_0_1 = (mp.GetSMSLevel)()
  if l_0_1 ~= mp.SMS_SCAN_ONCE_ADV and l_0_1 ~= mp.SMS_SCAN_LOW_ADV and l_0_1 ~= mp.SMS_SCAN_MED_ADV and l_0_1 ~= mp.SMS_SCAN_HIGH_ADV then
    return mp.CLEAN
  end
  local l_0_2 = (mp.GetSMSProcArchitecture)()
  local l_0_3 = (mp.GetSMSMemRanges)()
  local l_0_4 = (mp.hstr_full_log)()
  for l_0_8,l_0_9 in pairs(l_0_4) do
    if l_0_9.matched and l_0_9.VA then
      local l_0_10, l_0_11 = (mp.SMSVirtualQuery)(l_0_9.VA)
      if l_0_10 ~= true then
        return mp.CLEAN
      end
      if l_0_11.prot ~= 64 or l_0_11.state_type ~= (mp.bitor)(mp.SMS_MBI_COMMIT, mp.SMS_MBI_PRIVATE) then
        return mp.CLEAN
      end
      local l_0_12 = l_0_9.VA
      local l_0_13 = l_0_11.size
      local l_0_14 = l_0_3[l_0_11.found_ix]
      local l_0_15 = l_0_14.addr + l_0_14.size
      do
        if l_0_13 <= 4096 or l_0_15 < l_0_12 + 4096 then
          local l_0_16, l_0_17 = l_0_15 - l_0_12
        end
        -- DECOMPILER ERROR at PC93: Confused about usage of register: R16 in 'UnsetPending'

        local l_0_18 = nil
        do
          if (mp.ReadProcMem)(l_0_12, l_0_16) ~= nil then
            local l_0_19 = nil
            if (mp.x86dasm)(l_0_2, l_0_12, (mp.ReadProcMem)(l_0_12, l_0_16), l_0_18, 150, l_0_12, 0) ~= nil and ParseInstrInfo((mp.x86dasm)(l_0_2, l_0_12, (mp.ReadProcMem)(l_0_12, l_0_16), l_0_18, 150, l_0_12, 0)) == true then
              return mp.INFECTED
            end
          end
          -- DECOMPILER ERROR at PC117: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC117: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC117: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
l_0_1 = mp
l_0_1 = l_0_1.CLEAN
return l_0_1

