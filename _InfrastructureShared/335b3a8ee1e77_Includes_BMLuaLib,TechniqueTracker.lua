-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/335b3a8ee1e77_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
for l_0_5 = 1, l_0_0 do
  if (sigattr_tail[l_0_5]).attribute == 16385 then
    local l_0_6 = ((sigattr_tail[l_0_5]).utf8p1):lower()
    l_0_1[(mp.crc32)(0, l_0_6, 1, #l_0_6)] = 1
  end
end
local l_0_7 = {}
do
  local l_0_8 = {}
  for l_0_12 = 1, l_0_0 do
    if (sigattr_tail[l_0_12]).attribute == 16386 then
      local l_0_13 = ((sigattr_tail[l_0_12]).utf8p2):lower()
      local l_0_14 = ((sigattr_tail[l_0_12]).utf8p1):lower()
      local l_0_15 = (mp.crc32)(0, l_0_13, 1, #l_0_13)
      local l_0_16 = (mp.crc32)(0, l_0_14, 1, #l_0_14)
      if (l_0_1[l_0_16] ~= nil or l_0_1[l_0_15] ~= nil) and l_0_8[l_0_15] == nil then
        local l_0_17 = l_0_13:match("%.[^%.]+$")
        if l_0_17 ~= nil and (mp.bitand)((mp.GetExtensionClass)(l_0_17), 3) ~= 0 and #l_0_13 < #l_0_14 and l_0_14:find(l_0_13, 1, true) == 1 and l_0_14:byte(#l_0_13 + 1) ~= 58 then
          l_0_8[l_0_15] = 1
          local l_0_18 = l_0_14:match("%.[^%.]+$")
          if (mp.GetExtensionClass)(l_0_18) ~= 4 then
            local l_0_19 = (string.sub)(l_0_14, #l_0_13 + 1)
            if l_0_7[l_0_19] ~= nil then
              (table.insert)(l_0_7[l_0_19], l_0_12)
              if #l_0_7[l_0_19] >= 5 then
                local l_0_20 = {}
                l_0_20.count = 0
                for l_0_24,l_0_25 in pairs(l_0_7[l_0_19]) do
                  local l_0_26 = (sysio.ReadFile)((sigattr_tail[l_0_25]).utf8p1, 0, 4)
                  if l_0_26 ~= nil and l_0_20[l_0_26] == nil then
                    l_0_20[l_0_26] = 1
                    l_0_20.count = l_0_20.count + 1
                  end
                end
                if l_0_20.count > 4 then
                  (bm.add_related_string)("magic_mismatch", "true", bm.RelatedStringBMReport)
                else
                  ;
                  (bm.add_related_string)("magic_mismatch", "false", bm.RelatedStringBMReport)
                end
                ;
                (bm.add_related_string)("ransom_extension", l_0_19, bm.RelatedStringBMReport)
                local l_0_27 = {}
                local l_0_28 = ((bm.get_imagepath)()):lower()
                -- DECOMPILER ERROR at PC193: Overwrote pending register: R18 in 'AssignReg'

                if (bm.get_current_process_startup_info)() ~= nil then
                  do
                    local l_0_29, l_0_30, l_0_31, l_0_32, l_0_33 = ((bm.get_current_process_startup_info)()).ppid
                    ;
                    (table.insert)(l_0_27, l_0_28)
                    -- DECOMPILER ERROR at PC202: Confused about usage of register: R18 in 'UnsetPending'

                    ;
                    (table.insert)(l_0_27, l_0_29)
                    ;
                    (table.insert)(l_0_27, l_0_19)
                    local l_0_34 = nil
                    for l_0_38,l_0_39 in pairs(l_0_7[l_0_19]) do
                      local l_0_35 = "FileChain_MainSet:"
                      -- DECOMPILER ERROR at PC215: Confused about usage of register: R24 in 'UnsetPending'

                      do
                        local l_0_41, l_0_42, l_0_43 = , (string.find)((sigattr_tail[4]).utf8p1, "\\[^\\]*$") or 0
                        -- DECOMPILER ERROR at PC227: Confused about usage of register: R25 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC229: Confused about usage of register: R26 in 'UnsetPending'

                        local l_0_44 = nil
                        -- DECOMPILER ERROR at PC237: Confused about usage of register: R26 in 'UnsetPending'

                        do
                          if (string.find)(l_0_41, ".", l_0_42, true) ~= nil then
                            local l_0_45 = nil
                            l_0_35 = l_0_35 .. (crypto.CRC32Buffer)(-1, (string.sub)(l_0_44, l_0_42 + 1, (string.find)(l_0_41, ".", l_0_42, true) - 1), 0, #(string.sub)(l_0_44, l_0_42 + 1, (string.find)(l_0_41, ".", l_0_42, true) - 1))
                            l_0_35 = l_0_35 .. ";" .. (string.sub)(l_0_44, (string.find)(l_0_41, ".", l_0_42, true) + 1) .. ";"
                          end
                          l_0_44 = (sigattr_tail[l_0_40]).utf8p2
                          -- DECOMPILER ERROR at PC282: Confused about usage of register: R26 in 'UnsetPending'

                          -- DECOMPILER ERROR at PC283: Confused about usage of register: R27 in 'UnsetPending'

                          do
                            do
                              if (string.find)(l_0_44, ".", (string.find)(l_0_44, "\\[^\\]*$") or 0, true) ~= nil then
                                local l_0_46 = nil
                                l_0_35 = l_0_35 .. (crypto.CRC32Buffer)(-1, (string.sub)(l_0_44, ((string.find)(l_0_44, "\\[^\\]*$") or 0) + 1, (string.find)(l_0_44, ".", (string.find)(l_0_44, "\\[^\\]*$") or 0, true) - 1), 0, #(string.sub)(l_0_44, ((string.find)(l_0_44, "\\[^\\]*$") or 0) + 1, (string.find)(l_0_44, ".", (string.find)(l_0_44, "\\[^\\]*$") or 0, true) - 1))
                                -- DECOMPILER ERROR at PC299: Confused about usage of register: R27 in 'UnsetPending'

                                l_0_35 = l_0_35 .. ";" .. (string.sub)(l_0_44, (string.find)(l_0_44, ".", (string.find)(l_0_44, "\\[^\\]*$") or 0, true) + 1) .. ";"
                              end
                              ;
                              (bm.add_related_file)((sigattr_tail[l_0_40]).utf8p1)
                              ;
                              (bm.add_related_file)((sigattr_tail[l_0_40]).utf8p2)
                              ;
                              (table.insert)(l_0_27, (sigattr_tail[l_0_40]).utf8p1)
                              ;
                              (table.insert)(l_0_27, (sigattr_tail[l_0_40]).utf8p2)
                              -- DECOMPILER ERROR at PC329: LeaveBlock: unexpected jumping out DO_STMT

                              -- DECOMPILER ERROR at PC329: LeaveBlock: unexpected jumping out DO_STMT

                              -- DECOMPILER ERROR at PC329: LeaveBlock: unexpected jumping out DO_STMT

                            end
                          end
                        end
                      end
                    end
                    do
                      local l_0_47, l_0_48 = , (bm.get_process_relationships)()
                      for l_0_52,l_0_53 in ipairs(l_0_48) do
                        local l_0_49 = nil
                        -- DECOMPILER ERROR at PC338: Confused about usage of register: R26 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC343: Confused about usage of register: R26 in 'UnsetPending'

                        if l_0_46.image_path ~= nil then
                          (bm.add_related_process)(l_0_46.ppid)
                        end
                      end
                      -- DECOMPILER ERROR at PC348: Confused about usage of register: R21 in 'UnsetPending'

                      for l_0_57,l_0_58 in ipairs(l_0_49) do
                        local l_0_54 = nil
                        -- DECOMPILER ERROR at PC351: Confused about usage of register: R26 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC356: Confused about usage of register: R26 in 'UnsetPending'

                        if l_0_46.image_path ~= nil then
                          (bm.add_related_process)(l_0_46.ppid)
                          -- DECOMPILER ERROR at PC359: Confused about usage of register: R26 in 'UnsetPending'

                          TrackPidAndTechniqueBM(l_0_46.ppid, "T1485", "susp_ransomware_childproc_type2")
                        end
                      end
                      ;
                      (bm.add_related_string)("ransom_files_main", l_0_47, bm.RelatedStringBMReport)
                      ;
                      (MpCommon.OverwritePersistContextNoPath)("genb_ransom_meta", l_0_27, 700)
                      ;
                      (bm.trigger_sig)("GenericRansomware", "Type2")
                      sms_untrusted_process()
                      ;
                      (bm.add_action)("SmsAsyncScanEvent", 100)
                      TrackPidAndTechniqueBM(l_0_34, "T1486", "susp_ransomware_type4")
                      reportTimingData()
                      do return mp.INFECTED end
                      do
                        local l_0_59 = {}
                        -- DECOMPILER ERROR at PC403: No list found for R15 , SetList fails

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC405: LeaveBlock: unexpected jumping out IF_STMT

                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

