-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7db332bc333f 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

local l_0_0 = nil
-- DECOMPILER ERROR at PC13: Overwrote pending register: R1 in 'AssignReg'

local l_0_1 = nil
if l_0_0 ~= nil and l_0_1 ~= nil then
  if (string.find)(l_0_0, "c:\\documents and settings\\", 1, true) ~= nil and (string.find)(l_0_1, "c:\\documents and settings\\", 1, true) ~= nil then
    return mp.INFECTED
  end
  if (string.find)(l_0_0, "c:\\users\\", 1, true) ~= nil and (string.find)(l_0_1, "c:\\users\\", 1, true) ~= nil then
    return mp.INFECTED
  end
end
return mp.CLEAN

