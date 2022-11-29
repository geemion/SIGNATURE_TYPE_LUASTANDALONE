-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_Trojan_Win32_DestructiveCMD.B_Includes_AgePrevalence 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)()
if (string.lower)((string.sub)(l_0_0, -4)) ~= ".exe" then
  return mp.CLEAN
end
if not (MpCommon.QueryPersistContext)(l_0_0, "RunsDestructiveCMDsParent") then
  return mp.CLEAN
end
if (MpCommon.QueryPersistContext)(l_0_0, "RunsDestructiveCMDsParentStopLookup") then
  return mp.CLEAN
end
if (MpCommon.QueryPersistContext)(l_0_0, "RunsDestructiveCMDsParentBlock") then
  if (mp.get_mpattribute)("MpDisableCaching") then
    (mp.clear_mpattribute)("MpDisableCaching")
  end
  if (mp.get_mpattribute)("disableCachingQueryAgePrev") then
    (mp.clear_mpattribute)("disableCachingQueryAgePrev")
  end
  clearPersistContext(l_0_0, "disableCachingQueryAgePrev")
  ;
  (mp.SetHipsRule)("c1db55ab-c21a-4637-bb3f-a12568109d35")
  return mp.BLOCKEXECUTION
end
local l_0_1, l_0_2 = getAgePrev(false)
if l_0_1 == -1 or l_0_2 == -1 then
  if not (mp.get_mpattribute)("disableCachingQueryAgePrev") then
    (mp.set_mpattribute)("disableCachingQueryAgePrev")
  end
  if not (MpCommon.QueryPersistContext)(l_0_0, "disableCachingQueryAgePrev") then
    (MpCommon.AppendPersistContext)(l_0_0, "disableCachingQueryAgePrev", 0)
  end
  return mp.CLEAN
end
if l_0_1 <= 1 and l_0_2 <= 100 then
  if not (MpCommon.QueryPersistContext)(l_0_0, "RunsDestructiveCMDsParentBlock") then
    (MpCommon.AppendPersistContext)(l_0_0, "RunsDestructiveCMDsParentBlock", 0)
  end
  if (mp.get_mpattribute)("MpDisableCaching") then
    (mp.clear_mpattribute)("MpDisableCaching")
  end
  if (mp.get_mpattribute)("disableCachingQueryAgePrev") then
    (mp.clear_mpattribute)("disableCachingQueryAgePrev")
  end
  clearPersistContext(l_0_0, "disableCachingQueryAgePrev")
  if (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") == true then
    (mp.SetHipsRule)("c1db55ab-c21a-4637-bb3f-a12568109d35")
    return mp.BLOCKEXECUTION
  else
    ;
    (mp.ReportLowfi)(l_0_0, 351527962)
    return mp.CLEAN
  end
end
if not (MpCommon.QueryPersistContext)(l_0_0, "RunsDestructiveCMDsParentStopLookup") then
  (MpCommon.AppendPersistContext)(l_0_0, "RunsDestructiveCMDsParentStopLookup", 0)
end
if (mp.get_mpattribute)("MpDisableCaching") then
  (mp.clear_mpattribute)("MpDisableCaching")
end
if (mp.get_mpattribute)("disableCachingQueryAgePrev") then
  (mp.clear_mpattribute)("disableCachingQueryAgePrev")
end
clearPersistContext(l_0_0, "disableCachingQueryAgePrev")
return mp.CLEAN

