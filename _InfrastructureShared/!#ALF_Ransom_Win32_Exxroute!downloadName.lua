-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_Ransom_Win32_Exxroute!downloadName 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if (l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and peattributes.isdll then
  local l_0_1 = (mp.getfilesize)()
  if l_0_1 > 17664 and l_0_1 < 1200128 then
    local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
    if (string.find)(l_0_2, "api%-ms%-win%-system%-%w+%-l1%-1%-0%.dll") then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

