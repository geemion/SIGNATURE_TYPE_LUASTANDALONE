-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55b32bfbb03c 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if (MpCommon.QueryPersistContext)(l_0_0, "RunsDestructiveCMDsParentBlock") then
  if (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") == true then
    return mp.INFECTED
  else
    ;
    (mp.ReportLowfi)(l_0_0, 3371538283)
    return mp.CLEAN
  end
end
if not (MpCommon.QueryPersistContext)(l_0_0, "RunsDestructiveCMDsParent") then
  return mp.CLEAN
end
local l_0_1 = -1
local l_0_2 = -1
local l_0_3 = (MpCommon.GetPersistContext)((string.lower)(l_0_0))
if l_0_3 ~= nil then
  for l_0_7,l_0_8 in ipairs(l_0_3) do
    local l_0_9 = tonumber((string.match)(l_0_8, "^Age:([0-9]+)$"))
    if l_0_9 ~= nil and l_0_1 < l_0_9 then
      l_0_1 = l_0_9
    end
    local l_0_10 = tonumber((string.match)(l_0_8, "^Prevalence:([0-9]+)$"))
    if l_0_10 ~= nil and l_0_2 < l_0_10 then
      l_0_2 = l_0_10
    end
  end
end
do
  if l_0_1 > -1 and l_0_1 <= 1 and l_0_2 > -1 and l_0_2 <= 100 then
    if (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") == true then
      return mp.INFECTED
    else
      ;
      (mp.ReportLowfi)(l_0_0, 3371538283)
      return mp.CLEAN
    end
  end
  return mp.CLEAN
end

