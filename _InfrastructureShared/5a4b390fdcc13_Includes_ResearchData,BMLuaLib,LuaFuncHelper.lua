-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5a4b390fdcc13_Includes_ResearchData,BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
local l_0_0 = 0
if (this_sigattrlog[15]).matched then
  l_0_0 = 2
else
  if (this_sigattrlog[16]).matched then
    l_0_0 = 3
  else
    if (this_sigattrlog[23]).matched then
      l_0_0 = 4
    else
      if (this_sigattrlog[24]).matched then
        l_0_0 = 5
      else
        if (this_sigattrlog[25]).matched then
          l_0_0 = 6
        else
          if (this_sigattrlog[17]).matched then
            l_0_0 = 7
          else
            if (this_sigattrlog[26]).matched then
              l_0_0 = 8
            else
              if (this_sigattrlog[27]).matched then
                l_0_0 = 9
              else
                if (this_sigattrlog[28]).matched then
                  l_0_0 = 10
                else
                  if (this_sigattrlog[18]).matched then
                    l_0_0 = 11
                  else
                    if (this_sigattrlog[19]).matched then
                      l_0_0 = 12
                    else
                      if (this_sigattrlog[29]).matched then
                        l_0_0 = 13
                      else
                        if (this_sigattrlog[30]).matched then
                          l_0_0 = 14
                        else
                          if (this_sigattrlog[31]).matched then
                            l_0_0 = 15
                          else
                            if (this_sigattrlog[32]).matched then
                              l_0_0 = 16
                            else
                              if (this_sigattrlog[33]).matched then
                                l_0_0 = 17
                              else
                                if (this_sigattrlog[34]).matched then
                                  l_0_0 = 18
                                else
                                  if (this_sigattrlog[20]).matched then
                                    l_0_0 = 19
                                  else
                                    if (this_sigattrlog[21]).matched then
                                      l_0_0 = 20
                                    else
                                      if (this_sigattrlog[22]).matched then
                                        l_0_0 = 21
                                      else
                                        if (this_sigattrlog[2]).matched then
                                          l_0_0 = 22
                                        else
                                          if (this_sigattrlog[3]).matched then
                                            l_0_0 = 23
                                          else
                                            if (this_sigattrlog[4]).matched then
                                              l_0_0 = 38
                                            else
                                              if (this_sigattrlog[5]).matched then
                                                l_0_0 = 56
                                              else
                                                if (this_sigattrlog[6]).matched then
                                                  l_0_0 = 57
                                                else
                                                  if (this_sigattrlog[7]).matched then
                                                    l_0_0 = 101
                                                  else
                                                    if (this_sigattrlog[8]).matched then
                                                      l_0_0 = 102
                                                    else
                                                      if (this_sigattrlog[9]).matched then
                                                        l_0_0 = 103
                                                      else
                                                        if (this_sigattrlog[10]).matched then
                                                          l_0_0 = 104
                                                        else
                                                          if (this_sigattrlog[11]).matched then
                                                            l_0_0 = 105
                                                          else
                                                            if (this_sigattrlog[12]).matched then
                                                              l_0_0 = 106
                                                            else
                                                              if (this_sigattrlog[13]).matched then
                                                                l_0_0 = 107
                                                              else
                                                                if (this_sigattrlog[14]).matched then
                                                                  l_0_0 = 108
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
local l_0_1 = tonumber((this_sigattrlog[1]).utf8p2)
local l_0_2 = math_floor(l_0_0 / 100) + 1
if isFirstTimeATActive() == false then
  return mp.CLEAN
end
initPersistContextFTAT(2)
local l_0_3, l_0_4, l_0_5 = getFTATData(l_0_2, l_0_0, 2, "null", l_0_1)
if l_0_3 == false then
  return mp.CLEAN
end
if l_0_5 < 2592000 and l_0_5 > 0 then
  if l_0_5 > 604800 and l_0_5 <= 1209600 then
    (bm.trigger_sig)("FirstTimeAT_low", l_0_3)
    return mp.CLEAN
  end
  if l_0_5 > 1209600 then
    (bm.trigger_sig)("FirstTimeAT_medium", l_0_3)
    return mp.CLEAN
  end
  return mp.CLEAN
end
;
(bm.add_related_file)(l_0_4)
;
(bm.add_related_string)("FirstTime", l_0_3, bm.RelatedStringBMReport)
;
(bm.set_detection_string)(l_0_3)
local l_0_6, l_0_7 = (bm.get_process_relationships)()
for l_0_11,l_0_12 in ipairs(l_0_7) do
  local l_0_13 = (mp.bitand)(l_0_12.reason_ex, 1)
  if l_0_12.ppid ~= nil and l_0_12.image_path ~= nil and l_0_13 == 1 then
    (bm.add_related_file)(l_0_12.image_path)
  end
end
add_parents()
reportSessionInformation()
return mp.INFECTED

