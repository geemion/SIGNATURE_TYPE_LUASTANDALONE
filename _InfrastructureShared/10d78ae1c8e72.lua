-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/10d78ae1c8e72 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
if (hstrlog[1]).matched then
  local l_0_0 = (pe.mmap_va_nofastfail)((hstrlog[1]).VA + 4, 4)
  local l_0_1 = (pe.mmap_va_nofastfail)((hstrlog[1]).VA + 9, 4)
  local l_0_2 = (pe.mmap_va_nofastfail)((hstrlog[1]).VA + 14, 4)
  ;
  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", (mp.readu_u32)(l_0_0, 1), (mp.readu_u32)(l_0_1, 1), (mp.readu_u32)(l_0_2, 1)))
else
  do
    if (hstrlog[2]).matched then
      local l_0_3 = (pe.mmap_va_nofastfail)((hstrlog[2]).VA + 4, 4)
      local l_0_4 = (pe.mmap_va_nofastfail)((hstrlog[2]).VA + 9, 4)
      local l_0_5 = (pe.mmap_va_nofastfail)((hstrlog[2]).VA + 14, 4)
      ;
      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", (mp.readu_u32)(l_0_3, 1), (mp.readu_u32)(l_0_4, 1), (mp.bitand)(-(mp.readu_u32)(l_0_5, 1), 4294967295)))
    else
      do
        if (hstrlog[3]).matched then
          local l_0_6 = (pe.mmap_va_nofastfail)((hstrlog[3]).VA + 4, 4)
          local l_0_7 = (pe.mmap_va_nofastfail)((hstrlog[3]).VA + 9, 4)
          local l_0_8 = (pe.mmap_va_nofastfail)((hstrlog[3]).VA + 14, 4)
          ;
          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", (mp.bitand)(-(mp.readu_u32)(l_0_6, 1), 4294967295), (mp.readu_u32)(l_0_7, 1), (mp.readu_u32)(l_0_8, 1)))
        else
          do
            if (hstrlog[4]).matched then
              local l_0_9 = (mp.readfile)((pe.foffset_va)((hstrlog[4]).VA + 7), 4)
              local l_0_10 = (mp.readfile)((pe.foffset_va)((hstrlog[4]).VA - 4), 4)
              local l_0_11 = (mp.readfile)((pe.foffset_va)((hstrlog[4]).VA + 14), 4)
              ;
              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", (mp.readu_u32)(l_0_9, 1), (mp.readu_u32)(l_0_10, 1), (mp.readu_u32)(l_0_11, 1)))
            else
              do
                if (hstrlog[5]).matched then
                  local l_0_12 = (mp.readfile)((pe.foffset_va)((hstrlog[5]).VA + 7), 4)
                  local l_0_13 = (mp.readfile)((pe.foffset_va)((hstrlog[5]).VA - 4), 4)
                  local l_0_14 = (mp.readfile)((pe.foffset_va)((hstrlog[5]).VA + 14), 4)
                  ;
                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", (mp.readu_u32)(l_0_12, 1), (mp.readu_u32)(l_0_13, 1), (mp.readu_u32)(l_0_14, 1)))
                else
                  do
                    if (hstrlog[6]).matched then
                      local l_0_15 = (mp.readfile)((pe.foffset_va)((hstrlog[6]).VA - 16), 4)
                      local l_0_16 = (mp.readfile)((pe.foffset_va)((hstrlog[6]).VA - 11), 4)
                      local l_0_17 = (mp.readfile)((pe.foffset_va)((hstrlog[6]).VA - 4), 4)
                      ;
                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", (mp.readu_u32)(l_0_17, 1), (mp.readu_u32)(l_0_16, 1), (mp.readu_u32)(l_0_15, 1)))
                    else
                      do
                        if (hstrlog[7]).matched then
                          local l_0_18 = (mp.readfile)((pe.foffset_va)((hstrlog[7]).VA - 18), 4)
                          local l_0_19 = (mp.readfile)((pe.foffset_va)((hstrlog[7]).VA - 11), 4)
                          local l_0_20 = (mp.readfile)((pe.foffset_va)((hstrlog[7]).VA - 4), 4)
                          ;
                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", (mp.readu_u32)(l_0_20, 1), (mp.readu_u32)(l_0_19, 1), (mp.readu_u32)(l_0_18, 1)))
                        else
                          do
                            if (hstrlog[8]).matched then
                              local l_0_21 = (mp.readfile)((pe.foffset_va)((hstrlog[8]).VA - 18), 4)
                              local l_0_22 = (mp.readfile)((pe.foffset_va)((hstrlog[8]).VA - 11), 4)
                              local l_0_23 = (mp.readfile)((pe.foffset_va)((hstrlog[8]).VA - 4), 4)
                              ;
                              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", (mp.readu_u32)(l_0_23, 1), (mp.readu_u32)(l_0_22, 1), (mp.readu_u32)(l_0_21, 1)))
                            else
                              do
                                if (hstrlog[9]).matched then
                                  local l_0_24 = (mp.readfile)((pe.foffset_va)((hstrlog[9]).VA - 14), 4)
                                  local l_0_25 = (mp.readfile)((pe.foffset_va)((hstrlog[9]).VA - 9), 4)
                                  local l_0_26 = (mp.readfile)((pe.foffset_va)((hstrlog[9]).VA - 4), 4)
                                  ;
                                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", (mp.readu_u32)(l_0_26, 1), (mp.readu_u32)(l_0_25, 1), (mp.readu_u32)(l_0_24, 1)))
                                else
                                  do
                                    if (hstrlog[10]).matched then
                                      local l_0_27 = (mp.readfile)((pe.foffset_va)((hstrlog[10]).VA - 18), 4)
                                      local l_0_28 = (mp.readfile)((pe.foffset_va)((hstrlog[10]).VA - 11), 4)
                                      local l_0_29 = (mp.readfile)((pe.foffset_va)((hstrlog[10]).VA - 4), 4)
                                      ;
                                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", (mp.readu_u32)(l_0_29, 1), (mp.readu_u32)(l_0_28, 1), (mp.readu_u32)(l_0_27, 1)))
                                    end
                                    do
                                      return mp.CLEAN
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

