-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3da4160740b3d_Includes_BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
if (versioning.GetTestMode)() ~= 65000 and (versioning.GetCloudBlockLevel)() < 4 and (MpCommon.IsSampled)(1000, true, true, true) == false then
  return mp.CLEAN
end
local l_0_0, l_0_1 = nil, nil
if (this_sigattrlog[5]).matched then
  l_0_0 = (this_sigattrlog[5]).utf8p1
  l_0_1 = 2
else
  if (this_sigattrlog[6]).matched then
    l_0_0 = (this_sigattrlog[6]).utf8p1
    l_0_1 = 6
  else
    if (this_sigattrlog[7]).matched then
      l_0_0 = (this_sigattrlog[7]).utf8p1
      l_0_1 = 17
    else
      if (this_sigattrlog[8]).matched then
        l_0_0 = (this_sigattrlog[8]).utf8p1
        l_0_1 = 18
      else
        if (this_sigattrlog[9]).matched then
          l_0_0 = (this_sigattrlog[9]).utf8p1
          l_0_1 = 24
        else
          if (this_sigattrlog[10]).matched then
            l_0_0 = (this_sigattrlog[10]).utf8p1
            l_0_1 = 25
          else
            if (this_sigattrlog[11]).matched then
              l_0_0 = (this_sigattrlog[11]).utf8p1
              l_0_1 = 28
            else
              if (this_sigattrlog[12]).matched then
                l_0_0 = (this_sigattrlog[12]).utf8p1
                l_0_1 = 29
              else
                if (this_sigattrlog[13]).matched then
                  l_0_0 = (this_sigattrlog[13]).utf8p1
                  l_0_1 = 33
                else
                  if (this_sigattrlog[14]).matched then
                    l_0_0 = (this_sigattrlog[14]).utf8p1
                    l_0_1 = 35
                  else
                    if (this_sigattrlog[15]).matched then
                      l_0_0 = (this_sigattrlog[15]).utf8p1
                      l_0_1 = 36
                    else
                      if (this_sigattrlog[16]).matched then
                        l_0_0 = (this_sigattrlog[16]).utf8p1
                        l_0_1 = 37
                      else
                        if (this_sigattrlog[17]).matched then
                          l_0_0 = (this_sigattrlog[17]).utf8p1
                          l_0_1 = 42
                        else
                          if (this_sigattrlog[18]).matched then
                            l_0_0 = (this_sigattrlog[18]).utf8p1
                            l_0_1 = 43
                          else
                            if (this_sigattrlog[19]).matched then
                              l_0_0 = (this_sigattrlog[19]).utf8p1
                              l_0_1 = 44
                            else
                              if (this_sigattrlog[20]).matched then
                                l_0_0 = (this_sigattrlog[20]).utf8p1
                                l_0_1 = 45
                              else
                                if (this_sigattrlog[21]).matched then
                                  l_0_0 = (this_sigattrlog[21]).utf8p1
                                  l_0_1 = 46
                                else
                                  if (this_sigattrlog[23]).matched then
                                    l_0_0 = (this_sigattrlog[23]).utf8p1
                                    l_0_1 = 48
                                  else
                                    if (this_sigattrlog[22]).matched then
                                      l_0_0 = (this_sigattrlog[22]).utf8p1
                                      l_0_1 = 47
                                    else
                                      if (this_sigattrlog[24]).matched then
                                        l_0_0 = (this_sigattrlog[24]).utf8p1
                                        l_0_1 = 49
                                      else
                                        if (this_sigattrlog[25]).matched then
                                          l_0_0 = (this_sigattrlog[25]).utf8p1
                                          l_0_1 = 50
                                        else
                                          if (this_sigattrlog[26]).matched then
                                            l_0_0 = (this_sigattrlog[26]).utf8p1
                                            l_0_1 = 51
                                          else
                                            if (this_sigattrlog[27]).matched then
                                              l_0_0 = (this_sigattrlog[27]).utf8p1
                                              l_0_1 = 52
                                            else
                                              if (this_sigattrlog[28]).matched then
                                                l_0_0 = (this_sigattrlog[28]).utf8p1
                                                l_0_1 = 53
                                              else
                                                if (this_sigattrlog[29]).matched then
                                                  l_0_0 = (this_sigattrlog[29]).utf8p1
                                                  l_0_1 = 55
                                                else
                                                  if (this_sigattrlog[30]).matched then
                                                    l_0_0 = (this_sigattrlog[30]).utf8p1
                                                    l_0_1 = 59
                                                  else
                                                    if (this_sigattrlog[31]).matched then
                                                      l_0_0 = (this_sigattrlog[31]).utf8p1
                                                      l_0_1 = 60
                                                    else
                                                      if (this_sigattrlog[32]).matched then
                                                        l_0_0 = (this_sigattrlog[32]).utf8p1
                                                        l_0_1 = 61
                                                      else
                                                        if (this_sigattrlog[33]).matched then
                                                          l_0_0 = (this_sigattrlog[33]).utf8p1
                                                          l_0_1 = 62
                                                        else
                                                          if (this_sigattrlog[34]).matched then
                                                            l_0_0 = (this_sigattrlog[34]).utf8p1
                                                            l_0_1 = 63
                                                          else
                                                            if (this_sigattrlog[35]).matched then
                                                              l_0_0 = (this_sigattrlog[35]).utf8p1
                                                              l_0_1 = 249
                                                            else
                                                              if (this_sigattrlog[36]).matched then
                                                                l_0_0 = (this_sigattrlog[36]).utf8p1
                                                                l_0_1 = 250
                                                              else
                                                                if (this_sigattrlog[37]).matched then
                                                                  l_0_0 = (this_sigattrlog[37]).utf8p1
                                                                  l_0_1 = 251
                                                                else
                                                                  if (this_sigattrlog[38]).matched then
                                                                    l_0_0 = (this_sigattrlog[38]).utf8p1
                                                                    l_0_1 = 252
                                                                  else
                                                                    if (this_sigattrlog[39]).matched then
                                                                      l_0_0 = (this_sigattrlog[39]).utf8p1
                                                                      l_0_1 = 255
                                                                    else
                                                                      if (this_sigattrlog[40]).matched then
                                                                        l_0_0 = (this_sigattrlog[40]).utf8p1
                                                                        l_0_1 = 257
                                                                      else
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
if not l_0_0:match("[%w%-%.]*%.[%w%-]+%.[%w]+") then
  return mp.CLEAN
end
local l_0_2 = lastIndexOf(l_0_0, ".", #l_0_0 - 7)
local l_0_3 = (string.lower)((string.sub)(l_0_0, l_0_2 + 1))
if not l_0_3 then
  return mp.CLEAN
end
local l_0_4 = l_0_3 .. "_" .. l_0_1
local l_0_5 = "NRI-DNS-EXF-NONA"
local l_0_6 = (string.format)("%s_%s_%s", l_0_5, l_0_3, l_0_1)
local l_0_7 = (MpCommon.GetPersistContextCountNoPath)(l_0_6)
if l_0_7 and l_0_7 > 0 then
  return mp.CLEAN
end
local l_0_8 = (this_sigattrlog[3]).np1
if not l_0_8 then
  return mp.CLEAN
end
l_0_8 = (mp.bitand)(l_0_8, 65535)
local l_0_9, l_0_10 = (mp.CheckUrl)(l_0_3)
if l_0_9 == 1 and l_0_10 == 1 then
  return mp.CLEAN
end
local l_0_11 = (string.sub)(l_0_0, 1, l_0_2 - 1)
if (versioning.GetTestMode)() ~= 65000 and (l_0_11 <= 0 or computeStringScores(l_0_11) <= 1) and R15_PC479 <= 3 and l_0_2 - 1 <= 5 then
  return mp.CLEAN
end
local l_0_12 = (MpCommon.GetPersistContextCountNoPath)(l_0_4)
if l_0_12 < 20 then
  local l_0_13 = (MpCommon.QueryPersistContextNoPath)(l_0_4, R15_PC479)
  -- DECOMPILER ERROR at PC500: Overwrote pending register: R15 in 'AssignReg'

  if not l_0_13 then
    local l_0_14 = computeReponseLength(R15_PC479)
    -- DECOMPILER ERROR at PC502: Overwrote pending register: R15 in 'AssignReg'

    -- DECOMPILER ERROR at PC503: Overwrote pending register: R15 in 'AssignReg'

    R15_PC479(l_0_4, l_0_11, 3600)
    -- DECOMPILER ERROR at PC508: Overwrote pending register: R15 in 'AssignReg'

    -- DECOMPILER ERROR at PC509: Overwrote pending register: R15 in 'AssignReg'

    R15_PC479(l_0_4 .. "T", (MpCommon.GetCurrentTimeT)() .. "_" .. #l_0_11 .. "_" .. l_0_14, 3600)
    l_0_12 = l_0_12 + 1
  end
end
do
  if l_0_12 == 20 then
    local l_0_15 = (MpCommon.GetPersistContextNoPath)(l_0_4)
    -- DECOMPILER ERROR at PC531: Overwrote pending register: R15 in 'AssignReg'

    local l_0_16, l_0_17 = extractCommonSuffix(R15_PC479, 0), R15_PC479
    local l_0_18 = computeDataLength(l_0_15, #l_0_17)
    local l_0_19 = #l_0_17 + l_0_18
    if l_0_19 < 40 or l_0_18 < 20 then
      (mp.changedetectionname)(805306724)
    else
      local l_0_20 = (this_sigattrlog[2]).utf8p1
      local l_0_21 = routeBasedOnProcess(l_0_20, 1)
      ;
      (mp.changedetectionname)(l_0_21)
    end
    do
      do
        if not (MpCommon.QueryPersistContextNoPath)(l_0_5, l_0_4) then
          (MpCommon.AppendPersistContextNoPath)(l_0_5, l_0_4, 60)
        end
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

