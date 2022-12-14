-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ResearchData 

-- params : ...
-- function num : 0
validate_research_data = function(l_1_0, l_1_1)
  -- function num : 0_0
  local l_1_2 = 1024
  local l_1_3 = 4
  do
    local l_1_4 = 32
    if l_1_4 < (string.len)(l_1_0) then
      return false
    end
    do return l_1_3 <= (string.len)(l_1_1) and (string.len)(l_1_1) <= l_1_2 end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end

set_research_data = function(l_2_0, l_2_1, l_2_2)
  -- function num : 0_1
  if validate_research_data(l_2_0, l_2_1) == false then
    return false
  end
  if l_2_2 then
    (bm.add_related_string)(l_2_0, l_2_1, bm.RelatedStringBMReport)
  else
    local l_2_3 = "MpInternal_researchdata="
    local l_2_4 = l_2_3 .. l_2_0 .. "=" .. l_2_1
    ;
    (mp.set_mpattribute)(l_2_4)
  end
  do
    return true
  end
end

set_research_data_ex = function(...)
  -- function num : 0_2
  local l_3_1 = nil
  local l_3_2 = nil
  local l_3_3 = nil
  for l_3_7,l_3_8 in ipairs({...}) do
    local l_3_4, l_3_5 = , "MpInternal_researchdata="
    -- DECOMPILER ERROR at PC11: Confused about usage of register: R9 in 'UnsetPending'

    if .end % 2 == 1 then
      l_3_2 = R9_PC11
    else
      l_3_3 = R9_PC11
      if not validate_research_data(l_3_2, l_3_3) then
        return false
      end
      if l_3_9 <= 2 then
        l_3_5 = l_3_5 .. l_3_2 .. "=" .. l_3_3
      else
        -- DECOMPILER ERROR at PC34: Confused about usage of register: R10 in 'UnsetPending'

        l_3_5 = l_3_5 .. "," .. l_3_2 .. "=" .. l_3_3
      end
    end
  end
  -- DECOMPILER ERROR at PC40: Confused about usage of register: R4 in 'UnsetPending'

  ;
  (mp.set_mpattribute)(l_3_5)
  return true
end

local l_0_0 = function()
  -- function num : 0_3
  return 2
end

local l_0_1 = function()
  -- function num : 0_4
  return 2
end

createToolsList = function(l_6_0)
  -- function num : 0_5
  local l_6_1 = ""
  if (MpCommon.GetPersistContextCountNoPath)(l_6_0) > 0 then
    local l_6_2 = (MpCommon.GetPersistContextNoPath)(l_6_0)
    local l_6_3 = ""
    for l_6_7,l_6_8 in ipairs(l_6_2) do
      l_6_3 = (string.sub)(l_6_8, 0, l_6_8:find("_", 1, true) - 1)
      l_6_1 = (string.format)("%s%s,", l_6_1, l_6_3)
    end
    l_6_1 = (string.sub)(l_6_1, 0, -2)
  end
  do
    return l_6_1
  end
end

initPersistContextFTAT = function(l_7_0)
  -- function num : 0_6 , upvalues : l_0_0, l_0_1
  local l_7_1 = "FT_STC" .. l_7_0
  local l_7_2 = nil
  if l_7_0 == 2 then
    l_7_2 = l_0_0()
  else
    if l_7_0 == 3 then
      l_7_2 = l_0_1()
    end
  end
  local l_7_3 = (MpCommon.GetPersistContextCountNoPath)(l_7_1)
  local l_7_4 = (MpCommon.GetPersistContextNoPath)(l_7_1)
  if l_7_3 ~= l_7_2 then
    local l_7_5 = (MpCommon.GetCurrentTimeT)()
    if l_7_3 == 0 or l_7_3 == nil then
      l_7_4 = {}
      for l_7_9 = 1, l_7_2 do
        local l_7_10 = (string.char)(l_7_9) .. "_" .. l_7_5
        ;
        (table.insert)(l_7_4, l_7_10)
      end
      ;
      (MpCommon.SetPersistContextNoPath)(l_7_1, l_7_4, 31536000)
    else
      local l_7_11 = {}
      for l_7_15,l_7_16 in ipairs(l_7_4) do
        (table.insert)(l_7_11, l_7_16:byte(1))
      end
      ;
      (table.sort)(l_7_11)
      for l_7_20 = 1, l_7_2 do
        if l_7_20 ~= l_7_11[l_7_20] then
          local l_7_21 = (string.char)(l_7_20) .. "_" .. l_7_5
          ;
          (MpCommon.AppendPersistContextNoPath)(l_7_1, l_7_21, 31536000)
        end
      end
    end
  else
    do
      ;
      (MpCommon.OverwritePersistContextNoPath)(l_7_1, l_7_4, 31536000)
      return 
    end
  end
end

getVersionOfAdminToolProject = function()
  -- function num : 0_7
  return 1
end

initializePersistContextForFirstTimeAT = function()
  -- function num : 0_8
  local l_9_0 = getVersionOfAdminToolProject()
  local l_9_1 = (MpCommon.GetPersistContextCountNoPath)("FT_STC2")
  local l_9_2 = (MpCommon.GetPersistContextNoPath)("FT_STC2")
  if l_9_1 ~= l_9_0 then
    local l_9_3 = (MpCommon.GetCurrentTimeT)()
    if l_9_1 == 0 or l_9_1 == nil then
      l_9_2 = {}
      for l_9_7 = 1, l_9_0 do
        local l_9_8 = (string.char)(l_9_7) .. "_" .. l_9_3
        ;
        (table.insert)(l_9_2, l_9_8)
      end
      ;
      (MpCommon.SetPersistContextNoPath)("FT_STC2", {}, 31536000)
      ;
      (MpCommon.SetPersistContextNoPath)("FT_STC2", l_9_2, 31536000)
    else
      local l_9_9 = {}
      for l_9_13,l_9_14 in ipairs(l_9_2) do
        (table.insert)(l_9_9, l_9_14:byte(1))
      end
      ;
      (table.sort)(l_9_9)
      for l_9_18,l_9_19 in ipairs(l_9_9) do
        if l_9_18 ~= l_9_19 then
          (table.insert)(l_9_9, l_9_18, l_9_18)
          local l_9_20 = (string.char)(l_9_18) .. "_" .. l_9_3
          ;
          (MpCommon.AppendPersistContextNoPath)("FT_STC2", l_9_20, 31536000)
        end
      end
    end
  else
    do
      ;
      (MpCommon.OverwritePersistContextNoPath)("FT_STC2", l_9_2, 31536000)
      return 
    end
  end
end

isFirstTimeATActive = function()
  -- function num : 0_9
  if (versioning.GetTestMode)() ~= 425 then
    if (versioning.IsEnterprise)() or (versioning.IsServer)() or (versioning.IsSeville)() then
      return true
    end
    return false
  end
  return true
end

getDetectedToolTrackingStart = function(l_11_0, l_11_1)
  -- function num : 0_10
  if type(l_11_1) == "table" then
    for l_11_5,l_11_6 in ipairs(l_11_1) do
      if l_11_6:byte(1) == l_11_0 then
        local l_11_7 = tonumber
        do
          local l_11_8, l_11_9, l_11_10 = (string.sub)(l_11_6, 3), .end
          do return l_11_7(l_11_8, l_11_9, l_11_10) end
          -- DECOMPILER ERROR at PC22: Confused about usage of register R8 for local variables in 'ReleaseLocals'

          -- DECOMPILER ERROR at PC22: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC22: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC22: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    return 1
  end
  do return 0 end
  -- DECOMPILER ERROR at PC28: Confused about usage of register R7 for local variables in 'ReleaseLocals'

end

do
  local l_0_2 = function(l_12_0)
  -- function num : 0_11
  local l_12_2 = nil
  while 1 do
    l_12_2 = (sigattr_tail[l_12_0 - 1]).attribute
    local l_12_1 = nil
    if l_12_2 ~= 16389 and ((sigattr_tail[l_12_1]).utf8p1):lower() == ((sigattr_tail[l_12_0]).utf8p1):lower() then
      return l_12_2
    end
    l_12_1 = l_12_1 - 1
    if l_12_1 <= 1 then
      return false
    end
  end
  return false
end

  -- WARNING: undefined locals caused missing assignments!
end

