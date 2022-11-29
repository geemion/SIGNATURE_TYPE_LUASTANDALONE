-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/10a41f5dcf495_Includes_BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
if (versioning.GetTestMode)() ~= 65000 and (versioning.GetCloudBlockLevel)() < 4 and (MpCommon.IsSampled)(10000, true, true, true) == false then
  return mp.CLEAN
end
local l_0_0, l_0_1 = nil, nil
if (this_sigattrlog[5]).matched then
  l_0_0 = (this_sigattrlog[5]).utf8p1
  l_0_1 = 5
else
  if (this_sigattrlog[6]).matched then
    l_0_0 = (this_sigattrlog[6]).utf8p1
    l_0_1 = 12
  else
    if (this_sigattrlog[7]).matched then
      l_0_0 = (this_sigattrlog[7]).utf8p1
      l_0_1 = 15
    else
      if (this_sigattrlog[8]).matched then
        l_0_0 = (this_sigattrlog[8]).utf8p1
        l_0_1 = 39
      else
        if (this_sigattrlog[9]).matched then
          l_0_0 = (this_sigattrlog[9]).utf8p1
          l_0_1 = 41
        else
          if (this_sigattrlog[10]).matched then
            l_0_0 = (this_sigattrlog[10]).utf8p1
            l_0_1 = 256
          else
            return mp.CLEAN
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
local l_0_4 = "NRI-DNS-TL-NTXT"
local l_0_5 = (string.format)("%s_%s_%s", l_0_4, l_0_3, l_0_1)
local l_0_6 = l_0_3 .. "_" .. l_0_1
local l_0_7 = (MpCommon.GetPersistContextCountNoPath)(l_0_5)
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
if (versioning.GetTestMode)() ~= 65000 and (l_0_11 <= 0 or computeStringScores(l_0_11) <= 1) and R15_PC179 <= 3 and l_0_2 - 1 <= 5 then
  return mp.CLEAN
end
local l_0_12 = (MpCommon.GetPersistContextCountNoPath)(l_0_6)
if l_0_12 < 5 then
  local l_0_13 = (MpCommon.QueryPersistContextNoPath)(l_0_6, R15_PC179)
  -- DECOMPILER ERROR at PC200: Overwrote pending register: R15 in 'AssignReg'

  if not l_0_13 then
    local l_0_14 = computeReponseLength(R15_PC179)
    -- DECOMPILER ERROR at PC202: Overwrote pending register: R15 in 'AssignReg'

    -- DECOMPILER ERROR at PC203: Overwrote pending register: R15 in 'AssignReg'

    R15_PC179(l_0_6, l_0_11, 3600)
    -- DECOMPILER ERROR at PC208: Overwrote pending register: R15 in 'AssignReg'

    -- DECOMPILER ERROR at PC209: Overwrote pending register: R15 in 'AssignReg'

    R15_PC179(l_0_6 .. "T", (MpCommon.GetCurrentTimeT)() .. "_" .. #l_0_11 .. "_" .. l_0_14, 3600)
    l_0_12 = l_0_12 + 1
  end
end
do
  if l_0_12 >= 5 then
    local l_0_15 = (MpCommon.GetPersistContextNoPath)(l_0_6)
    -- DECOMPILER ERROR at PC231: Overwrote pending register: R15 in 'AssignReg'

    local l_0_16, l_0_17 = extractCommonSuffix(R15_PC179, 0), R15_PC179
    local l_0_18 = computeDataLength(l_0_15, #l_0_17)
    local l_0_19 = #l_0_17 + l_0_18
    if l_0_19 < 15 or l_0_18 < 10 then
      (mp.changedetectionname)(805306732)
    else
      local l_0_20 = (this_sigattrlog[2]).utf8p1
      local l_0_21 = nil
      if l_0_19 > 500 then
        l_0_21 = routeBasedOnProcess(l_0_20, 5)
      else
        l_0_21 = routeBasedOnProcess(l_0_20, 3)
      end
      ;
      (mp.changedetectionname)(l_0_21)
    end
    do
      do
        if isTrustedDomain(l_0_3, "DNS-sinkhole") then
          (MpCommon.AppendPersistContextNoPath)(l_0_5, "1", 3600)
          return mp.CLEAN
        end
        if not (MpCommon.QueryPersistContextNoPath)(l_0_4, l_0_6) then
          (MpCommon.AppendPersistContextNoPath)(l_0_4, l_0_6, 60)
        end
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

