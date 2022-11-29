-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a6b3d734e8a9_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = 60
local l_0_1 = (bm.get_imagepath)()
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
if (string.find)("/usr/bin/gpg", l_0_1, 1, true) ~= 1 and (string.find)("/usr/bin/gpg2", l_0_1, 1, true) ~= 1 then
  return mp.CLEAN
end
local l_0_2 = (bm.get_current_process_startup_info)()
if l_0_2 == nil or l_0_2.ppid == nil or l_0_2.command_line == nil or l_0_2.command_line == "" then
  return mp.CLEAN
end
local l_0_3 = l_0_2.command_line
if (string.find)(l_0_3, "/usr/bin/apt-key", 1, true) or (string.find)(l_0_3, "zypper -qn refresh", 1, true) or (string.find)(l_0_3, "--ignore-time-conflict", 1, true) or (string.find)(l_0_3, "--no-sk-comments", 1, true) or (string.find)(l_0_3, "--enable-progress-filter", 1, true) or (string.find)(l_0_3, "--enable-special-filenames", 1, true) or (string.find)(l_0_3, "--check-trustdb", 1, true) or (string.find)(l_0_3, "--version", 1, true) or (string.find)(l_0_3, "--fingerprint", 1, true) then
  return mp.CLEAN
end
local l_0_4 = {}
local l_0_5 = {}
-- DECOMPILER ERROR at PC138: No list found for R5 , SetList fails

local l_0_6 = {}
-- DECOMPILER ERROR at PC140: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC142: No list found for R6 , SetList fails

-- DECOMPILER ERROR at PC143: No list found for R4 , SetList fails

-- DECOMPILER ERROR at PC146: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC147: Overwrote pending register: R8 in 'AssignReg'

l_0_5 = l_0_5(l_0_6, "/usr/bin/apt-key", "zypper -qn refresh")
if l_0_5 == true then
  l_0_5 = mp
  l_0_5 = l_0_5.CLEAN
  return l_0_5
end
l_0_5 = mp
l_0_5 = l_0_5.GetParentProcInfo
l_0_5 = l_0_5()
-- DECOMPILER ERROR at PC159: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC162: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC163: Overwrote pending register: R6 in 'AssignReg'

if l_0_5 == nil or l_0_6 == nil then
  return l_0_6
end
-- DECOMPILER ERROR at PC165: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC169: Overwrote pending register: R6 in 'AssignReg'

if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
  local l_0_7 = (this_sigattrlog[4]).utf8p1
  local l_0_8 = MpCommon.SetPersistContextNoPath
  local l_0_9 = l_0_6
  local l_0_10 = {}
  -- DECOMPILER ERROR at PC188: No list found for R10 , SetList fails

  -- DECOMPILER ERROR at PC189: Overwrote pending register: R11 in 'AssignReg'

  l_0_8(l_0_9, l_0_10, l_0_7)
  l_0_8 = analyzeRansomwarePattern5
  l_0_9 = l_0_6
  l_0_10 = "NEW_FILE_CREATED"
  l_0_8 = l_0_8(l_0_9, l_0_10)
  l_0_9 = mp
  l_0_9 = l_0_9.INFECTED
  if l_0_8 == l_0_9 then
    l_0_8 = TrackPidAndTechniqueBM
    l_0_9 = "BM"
    l_0_10 = "T1486"
    l_0_8(l_0_9, l_0_10, "Impact_Encryption")
    l_0_8 = RemediateProcessTreeForLinux
    l_0_8()
    l_0_8 = mp
    l_0_8 = l_0_8.INFECTED
    return l_0_8
  end
end
do
  return mp.CLEAN
end

