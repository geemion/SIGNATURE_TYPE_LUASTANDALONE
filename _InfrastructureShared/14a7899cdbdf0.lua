-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/14a7899cdbdf0 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
if (hstrlog[1]).matched then
  local l_0_0 = (mp.readfile)((pe.foffset_va)((hstrlog[1]).VA + 10), 4)
  local l_0_1 = (mp.readfile)((pe.foffset_va)((hstrlog[1]).VA + 20), 4)
  local l_0_2 = (mp.readfile)((pe.foffset_va)((hstrlog[1]).VA), 4)
  ;
  (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_0, 1), 2), 255), (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_1, 1), 2), 255)))
  ;
  (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", (mp.readu_u32)(l_0_2, 1)))
else
  do
    if (hstrlog[2]).matched then
      local l_0_3 = (mp.readfile)((pe.foffset_va)((hstrlog[2]).VA + 13), 4)
      local l_0_4 = (mp.readfile)((pe.foffset_va)((hstrlog[2]).VA + 23), 4)
      local l_0_5 = (mp.readfile)((pe.foffset_va)((hstrlog[2]).VA), 4)
      ;
      (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_3, 1), 2), 255), (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_4, 1), 2), 255)))
      ;
      (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", (mp.readu_u32)(l_0_5, 1)))
    else
      do
        if (hstrlog[3]).matched then
          local l_0_6 = (mp.readfile)((pe.foffset_va)((hstrlog[3]).VA + 5), 4)
          local l_0_7 = (mp.readfile)((pe.foffset_va)((hstrlog[3]).VA + 15), 4)
          ;
          (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_6, 1), 2), 255), (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_7, 1), 2), 255)))
          ;
          (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", 4096))
        else
          do
            if (hstrlog[4]).matched then
              local l_0_8 = (mp.readfile)((pe.foffset_va)((hstrlog[4]).VA + 5), 4)
              local l_0_9 = (mp.readfile)((pe.foffset_va)((hstrlog[4]).VA + 15), 4)
              ;
              (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_8, 1), 2), 255), (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_9, 1), 2), 255)))
            else
              do
                if (hstrlog[5]).matched then
                  local l_0_10 = (mp.readfile)((pe.foffset_va)((hstrlog[5]).VA + 10), 4)
                  local l_0_11 = (mp.readfile)((pe.foffset_va)((hstrlog[5]).VA + 20), 4)
                  local l_0_12 = (mp.readfile)((pe.foffset_va)((hstrlog[5]).VA), 4)
                  ;
                  (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_10, 1), 2), 255), (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_11, 1), 2), 255)))
                  ;
                  (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", (mp.readu_u32)(l_0_12, 1)))
                else
                  do
                    if (hstrlog[6]).matched then
                      local l_0_13 = (mp.readfile)((pe.foffset_va)((hstrlog[6]).VA + 10), 4)
                      local l_0_14 = (mp.readfile)((pe.foffset_va)((hstrlog[6]).VA + 20), 4)
                      local l_0_15 = (mp.readfile)((pe.foffset_va)((hstrlog[6]).VA), 4)
                      ;
                      (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_13, 1), 2), 255), (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_14, 1), 2), 255)))
                      ;
                      (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", (mp.readu_u32)(l_0_15, 1)))
                    else
                      do
                        if (hstrlog[7]).matched then
                          local l_0_16 = (mp.readfile)((pe.foffset_va)((hstrlog[7]).VA + 13), 4)
                          local l_0_17 = (mp.readfile)((pe.foffset_va)((hstrlog[7]).VA + 23), 4)
                          local l_0_18 = (mp.readfile)((pe.foffset_va)((hstrlog[7]).VA), 4)
                          ;
                          (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_16, 1), 2), 255), (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_17, 1), 2), 255)))
                          ;
                          (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", (mp.readu_u32)(l_0_18, 1)))
                        else
                          do
                            if (hstrlog[8]).matched then
                              local l_0_19 = (mp.readfile)((pe.foffset_va)((hstrlog[8]).VA + 13), 4)
                              local l_0_20 = (mp.readfile)((pe.foffset_va)((hstrlog[8]).VA + 23), 4)
                              local l_0_21 = (mp.readfile)((pe.foffset_va)((hstrlog[8]).VA), 4)
                              ;
                              (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_19, 1), 2), 255), (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_20, 1), 2), 255)))
                              ;
                              (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", (mp.readu_u32)(l_0_21, 1)))
                            else
                              do
                                if (hstrlog[9]).matched then
                                  local l_0_22 = (mp.readfile)((pe.foffset_va)((hstrlog[9]).VA + 15), 4)
                                  local l_0_23 = (mp.readfile)((pe.foffset_va)((hstrlog[9]).VA + 25), 4)
                                  local l_0_24 = (mp.readfile)((pe.foffset_va)((hstrlog[9]).VA), 4)
                                  ;
                                  (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_22, 1), 2), 255), (mp.bitand)((mp.shr32)((mp.readu_u32)(l_0_23, 1), 2), 255)))
                                  ;
                                  (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", (mp.readu_u32)(l_0_24, 1)))
                                end
                                do
                                  if (hstrlog[10]).matched then
                                    local l_0_25 = (mp.readfile)((pe.foffset_va)((hstrlog[10]).VA - 1), 1)
                                    ;
                                    (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k3.0_%02X", (string.byte)(l_0_25)))
                                  else
                                    do
                                      do
                                        if (hstrlog[11]).matched then
                                          local l_0_26 = (mp.readfile)((pe.foffset_va)((hstrlog[11]).VA - 1), 1)
                                          ;
                                          (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k3.0_%02X", (string.byte)(l_0_26)))
                                        end
                                        return mp.INFECTED
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
                end
              end
            end
          end
        end
      end
    end
  end
end

