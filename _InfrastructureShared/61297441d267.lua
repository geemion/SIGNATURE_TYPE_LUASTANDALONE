-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/61297441d267 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, ".ndb") or (mp.get_mpattribute)("BM_ARCHIVE_FILE_GROUP") then
  return mp.CLEAN
end
return mp.SUSPICIOUS

