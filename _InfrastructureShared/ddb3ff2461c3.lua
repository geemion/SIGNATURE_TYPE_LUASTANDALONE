-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ddb3ff2461c3 

-- params : ...
-- function num : 0
local l_0_2 = nil
local l_0_0 = nil
local l_0_1 = mp.CLEAN
if not l_0_2 or not l_0_0 then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC19: Overwrote pending register: R0 in 'AssignReg'

-- DECOMPILER ERROR at PC24: Overwrote pending register: R1 in 'AssignReg'

if (string.find)(l_0_0, ":\\windows\\servicing\\trustedinstaller.exe", 1, true) then
  return mp.CLEAN
end
if (string.find)(l_0_0, "%windir%\\servicing\\trustedinstaller.exe", 1, true) then
  return mp.CLEAN
end
local l_0_3 = (mp.GetExecutablesFromCommandLine)(l_0_2)
if l_0_3 then
  for l_0_7,l_0_8 in ipairs(l_0_3) do
    if (string.len)(l_0_8) >= 3 then
      if l_0_1 ~= mp.INFECTED and (string.find)(l_0_0, l_0_8, 1, true) then
        l_0_1 = mp.INFECTED
      else
        if (sysio.IsFileExists)(l_0_8) and not (mp.IsKnownFriendlyFile)(l_0_8, false, false) then
          (bm.add_related_file)(l_0_8)
        end
      end
    end
  end
end
do
  if l_0_2 ~= mp.INFECTED then
    return mp.CLEAN
  end
  return mp.INFECTED
end

