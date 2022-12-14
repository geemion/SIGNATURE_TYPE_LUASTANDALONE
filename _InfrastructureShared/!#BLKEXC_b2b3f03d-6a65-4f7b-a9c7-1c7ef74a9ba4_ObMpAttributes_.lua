-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#BLKEXC_b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4") ~= true then
  return mp.CLEAN
end
if not peattributes.isexe and not peattributes.isdll then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)()
local l_0_1 = "enghipscpy:blockexecution:b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4"
if (mp.bitand)((mp.get_contextdata)(mp.CONTEXT_DATA_DEVICE_CHARACTERISTICS), 264193) ~= 264193 and not (MpCommon.QueryPersistContext)(l_0_0, l_0_1) then
  return mp.CLEAN
end
;
(MpCommon.AppendPersistContext)(l_0_0, l_0_1, 0)
;
(mp.set_mpattribute)("MpDisableCaching")
local l_0_2 = (versioning.GetOsBuildNumber)()
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN then
  do
    if (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) ~= true or l_0_2 < 10240 then
      local l_0_3 = {}
      l_0_3["rundll32.exe"] = true
      l_0_3["regsvr32.exe"] = true
      if l_0_3[((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)):lower()] == true and (mp.IsTrustedFile)(false) == false then
        (mp.set_mpattribute)("BM_BLKEXC:b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4")
        return mp.INFECTED
      end
    end
    if (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) == true or l_0_2 < 10240 then
      if (mp.IsTrustedFile)(false) == false then
        if l_0_2 < 10240 then
          (mp.set_mpattribute)("BM_BLKEXC:b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4")
        end
        return mp.INFECTED
      end
      if (mp.get_mpattribute)("BM_CSCRIPT_EXE") or (mp.get_mpattribute)("BM_MSHTA_EXE") or (mp.get_mpattribute)("BM_POWERSHELL_EXE") or (mp.get_mpattribute)("BM_POWERSHELL_ISE_EXE") or (mp.get_mpattribute)("BM_WSCRIPT_EXE") or (mp.get_mpattribute)("BM_CMD_EXE") or (mp.get_mpattribute)("BM_MSXSL_EXE") then
        if l_0_2 < 10240 then
          (mp.set_mpattribute)("BM_BLKEXC:b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4")
        end
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

