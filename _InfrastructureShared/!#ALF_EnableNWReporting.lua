-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_EnableNWReporting 

-- params : ...
-- function num : 0
local l_0_0 = 152
if (MpCommon.NidSearch)(l_0_0, 1) then
  return mp.CLEAN
end
local l_0_1 = 151
local l_0_2, l_0_3 = (MpCommon.NidSearch)(l_0_1, 1)
do
  if l_0_2 == true then
    local l_0_4 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
    if (mp.IsKnownFriendlyFile)(l_0_4, false, false) == true then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

