-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_CloudScanBasedOnFiletype_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 and l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
    if (string.find)(l_0_1, "/documents/", 1, true) ~= nil or (string.find)(l_0_1, "/downloads", 1, true) ~= nil or (string.find)(l_0_1, "/tmp/", 1, true) ~= nil then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

