-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/27a78a09fa44f 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 1 then
  local l_0_0 = nil
  if (hstrlog[1]).matched then
    l_0_0 = (hstrlog[1]).VA
    l_0_0 = l_0_0 - 171
  else
    if (hstrlog[2]).matched then
      l_0_0 = (hstrlog[2]).VA
      l_0_0 = l_0_0 - 224
    else
      if (hstrlog[3]).matched then
        l_0_0 = (hstrlog[3]).VA
        l_0_0 = l_0_0 - 272
      else
        if (hstrlog[4]).matched then
          l_0_0 = (hstrlog[4]).VA
          l_0_0 = l_0_0 - 80
        else
          if (hstrlog[5]).matched then
            l_0_0 = (hstrlog[5]).VA
            l_0_0 = l_0_0 - 288
          else
            if (hstrlog[6]).matched then
              l_0_0 = (hstrlog[6]).VA
              l_0_0 = l_0_0 - 352
            else
              if (hstrlog[7]).matched then
                l_0_0 = (hstrlog[7]).VA
                l_0_0 = l_0_0 - 112
              else
                if (hstrlog[8]).matched then
                  l_0_0 = (hstrlog[8]).VA
                  l_0_0 = l_0_0 - 192
                else
                  if (hstrlog[9]).matched then
                    l_0_0 = (hstrlog[9]).VA
                    l_0_0 = l_0_0 - 336
                  else
                    if (hstrlog[10]).matched then
                      l_0_0 = (hstrlog[10]).VA
                      l_0_0 = l_0_0 - 272
                    else
                      if (hstrlog[12]).matched then
                        l_0_0 = (hstrlog[12]).VA
                        l_0_0 = l_0_0 - 256
                      else
                        if (hstrlog[13]).matched then
                          l_0_0 = (hstrlog[13]).VA
                          l_0_0 = l_0_0 - 112
                        else
                          if (hstrlog[14]).matched then
                            l_0_0 = (hstrlog[14]).VA
                            l_0_0 = l_0_0 - 112
                          else
                            if (hstrlog[15]).matched then
                              l_0_0 = (hstrlog[15]).VA
                              l_0_0 = l_0_0 - 304
                            else
                              if (hstrlog[16]).matched then
                                l_0_0 = (hstrlog[16]).VA
                                l_0_0 = l_0_0 - 464
                              else
                                if (hstrlog[17]).matched then
                                  l_0_0 = (hstrlog[17]).VA
                                  l_0_0 = l_0_0 - 144
                                else
                                  if (hstrlog[18]).matched then
                                    l_0_0 = (hstrlog[18]).VA
                                    l_0_0 = l_0_0 - 624
                                  else
                                    if (hstrlog[19]).matched then
                                      l_0_0 = (hstrlog[19]).VA
                                      l_0_0 = l_0_0 - 336
                                    else
                                      if (hstrlog[23]).matched then
                                        l_0_0 = (hstrlog[23]).VA
                                        l_0_0 = l_0_0 - 384
                                      else
                                        if (hstrlog[20]).matched then
                                          l_0_0 = (hstrlog[20]).VA
                                          l_0_0 = l_0_0 - 640
                                        else
                                          if (hstrlog[21]).matched then
                                            l_0_0 = (hstrlog[21]).VA
                                            l_0_0 = l_0_0 - 336
                                          else
                                            if (hstrlog[22]).matched then
                                              l_0_0 = (hstrlog[22]).VA
                                              l_0_0 = l_0_0 - 592
                                            else
                                              if (hstrlog[11]).matched then
                                                l_0_0 = (hstrlog[11]).VA
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
      end
    end
  end
  if l_0_0 ~= nil then
    local l_0_1 = "HSTR:VirTool:Win32/Obfuscator.ACV!pointer_" .. (string.format)("%.08x", l_0_0)
    ;
    (mp.set_mpattribute)(l_0_1)
  end
end
do
  return mp.INFECTED
end

