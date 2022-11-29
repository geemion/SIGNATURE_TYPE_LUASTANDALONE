-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1f5b303f3ab78_Includes_BMLuaLib,Tech 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
local l_0_2 = 150000000
local l_0_3 = (bm.GetSignatureMatchDuration)()
if l_0_2 < l_0_3 then
  return mp.CLEAN
end
local l_0_4 = 0
for l_0_8 = 1, l_0_0 do
  local l_0_9 = (sigattr_tail[l_0_8]).attribute
  if l_0_9 == 16387 then
    local l_0_10 = (sigattr_tail[l_0_8]).utf8p1
    if l_0_10 ~= nil and l_0_10 ~= "" and l_0_1[l_0_10] == nil and isSensitiveFileForLinux(l_0_10) then
      l_0_1[l_0_10] = true
      ;
      (bm.add_related_file)(l_0_10)
      l_0_4 = l_0_4 + 1
    end
  end
end
if l_0_4 >= 10 then
  addRelatedProcess()
  reportRelatedBmHits()
  TrackPidAndTechniqueBM("BM", "T1486", "Impact_SensitiveFileTampering")
  local l_0_11 = json_encode(l_0_1)
  ;
  (bm.add_related_string)("file_metadata", l_0_11, bm.RelatedStringBMReport)
  RemediateProcessTreeForLinux()
  return mp.INFECTED
end
do
  return mp.CLEAN
end

