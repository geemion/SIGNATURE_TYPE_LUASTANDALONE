-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#999970_Last_VulnerableThirdParty 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_CONTROL_GUID)
local l_0_2, l_0_3 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_SCANREASON)
local l_0_4, l_0_5 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_CONTROL_VERSION)
if l_0_0 and l_0_4 then
  local l_0_6 = (mp.shr64)(l_0_5, 48)
  local l_0_7 = (mp.bitand)((mp.shr64)(l_0_5, 32), 65535)
  local l_0_8 = (mp.bitand)(l_0_5, 65535)
  if (string.match)(l_0_1, "08b0e5c0%-4fcb%-11cf%-aaa5%-00401c608501") or (string.match)(l_0_1, "8ad9c840%-044e%-11d1%-b3e9%-00805f499d93") or (string.sub)(l_0_1, 1, 9) == "cafeefac-" then
    if l_0_6 == 6 then
      if l_0_2 and l_0_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
        (mp.aggregate_mpattribute)("Context:MSJVM")
      end
      ;
      (mp.aggregate_mpattribute)("//MpIsIEVScan")
      return mp.TRUE
    end
    if l_0_6 == 10 and l_0_7 < 75 then
      if l_0_2 and l_0_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
        (mp.aggregate_mpattribute)("Context:MSJVM.B")
      end
      ;
      (mp.aggregate_mpattribute)("//MpIsIEVScan")
      return mp.TRUE
    end
    if l_0_6 == 11 and l_0_7 < 161 then
      if l_0_2 and l_0_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
        (mp.aggregate_mpattribute)("Context:MSJVM.B")
      end
      ;
      (mp.aggregate_mpattribute)("//MpIsIEVScan")
      return mp.TRUE
    end
  end
  if (string.match)(l_0_1, "d27cdb6e%-ae6d%-11cf%-96b8%-444553540000") and (l_0_6 < 28 or l_0_6 ~= 28 or l_0_8 < 161) then
    if l_0_2 and l_0_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
      (mp.aggregate_mpattribute)("Context:ShockwaveFlash")
    end
    ;
    (mp.aggregate_mpattribute)("//MpIsIEVScan")
    return mp.TRUE
  end
  if (string.match)(l_0_1, "ca8a9780%-280d%-11cf%-a24d%-444553540000") and l_0_6 < 11 then
    if l_0_2 and l_0_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
      (mp.aggregate_mpattribute)("Context:AcroPDF")
    end
    ;
    (mp.aggregate_mpattribute)("//MpIsIEVScan")
    return mp.TRUE
  end
end
do
  return mp.FALSE
end

