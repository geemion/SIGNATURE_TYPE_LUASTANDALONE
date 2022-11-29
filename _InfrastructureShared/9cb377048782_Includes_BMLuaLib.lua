-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9cb377048782_Includes_BMLuaLib 

-- params : ...
-- function num : 0
local l_0_0 = 60
local l_0_1 = (bm.get_imagepath)()
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
local l_0_2 = (mp.GetParentProcInfo)()
if l_0_2 == nil or l_0_2.ppid == nil then
  return mp.CLEAN
end
local l_0_3 = l_0_2.ppid .. ":" .. l_0_1 .. ":File_Renamed"
if IsProcessExcludedFromRansomwareAnalysis() == true then
  return mp.CLEAN
end
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil and (this_sigattrlog[4]).utf8p2 ~= nil then
  local l_0_4 = (this_sigattrlog[4]).utf8p1
  local l_0_5 = (this_sigattrlog[4]).utf8p2
  local l_0_6 = l_0_4:match("[^>]*[\\/$]")
  local l_0_7 = l_0_5:match("[^>]*[\\/$]")
  local l_0_8 = l_0_4:match("%.[^/%.]+$")
  local l_0_9 = l_0_5:match("%.[^/%.]+$")
  if l_0_7 ~= nil and l_0_6 ~= nil and l_0_6 == l_0_7 and l_0_8 ~= nil and l_0_9 ~= nil and l_0_9 ~= l_0_8 and isFileExtensionOfInterest(l_0_5) and isKnownFileExtension(l_0_4) == false and IsRansomwareProcessImagePathExtensionExcluded(l_0_1, l_0_8) == false then
    local l_0_10 = MpCommon.SetPersistContextNoPath
    local l_0_11 = l_0_3
    local l_0_12 = {}
    -- DECOMPILER ERROR at PC100: No list found for R12 , SetList fails

    -- DECOMPILER ERROR at PC101: Overwrote pending register: R13 in 'AssignReg'

    l_0_10(l_0_11, l_0_12, l_0_4)
    l_0_10 = analyzeRansomwarePattern5
    l_0_11 = l_0_3
    l_0_12 = "FILE_RENAMED_WITH_UNIQUE_EXTN"
    l_0_10 = l_0_10(l_0_11, l_0_12)
    l_0_11 = mp
    l_0_11 = l_0_11.INFECTED
    if l_0_10 == l_0_11 then
      l_0_10 = RemediateProcessTreeForLinux
      l_0_10()
      l_0_10 = mp
      l_0_10 = l_0_10.INFECTED
      return l_0_10
    end
  end
end
do
  return mp.CLEAN
end

