-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#BM_LOWFI_DHA 

-- params : ...
-- function num : 0
if (mp.get_mpattributesubstring)("!dha") and ((mp.get_mpattributesubstring)("ALF:") or (mp.get_mpattributesubstring)("SLF:") or (mp.get_mpattributesubstring)("TEL:") or (mp.get_mpattributesubstring)("ALFPER:") or (mp.get_mpattributesubstring)("SLFPER:") or (mp.get_mpattributesubstring)("TELPER:")) then
  local l_0_0 = {}
  -- DECOMPILER ERROR at PC49: No list found for R0 , SetList fails

  -- DECOMPILER ERROR at PC50: Overwrote pending register: R1 in 'AssignReg'

  local l_0_1 = "ALF:"
  -- DECOMPILER ERROR at PC51: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC52: Overwrote pending register: R3 in 'AssignReg'

  for l_0_5,l_0_6 in ("SLF:")("TEL:") do
    local l_0_7 = (mp.enum_mpattributesubstring)(l_0_6)
    for l_0_11,l_0_12 in ipairs(l_0_7) do
      if l_0_12:sub(-#l_0_1) == l_0_1 then
        local l_0_13 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
        if l_0_13 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE or l_0_13 == mp.SCANREASON_ONOPEN then
          local l_0_14 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
          local l_0_15 = (mp.GetProcessCommandLine)(l_0_14)
          if l_0_15 ~= nil then
            (mp.set_mpattribute)((string.format)("MpInternal_researchdata=cmdline=%s", l_0_15))
          end
        end
        do
          do
            do return mp.INFECTED end
            -- DECOMPILER ERROR at PC104: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC104: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC104: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
end
-- DECOMPILER ERROR at PC109: Overwrote pending register: R0 in 'AssignReg'

do return l_0_0 end
-- WARNING: undefined locals caused missing assignments!

