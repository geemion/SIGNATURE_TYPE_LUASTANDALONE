-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/147b3925bbe5d 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
    local l_0_0 = nil
  end
  local l_0_1 = nil
  -- DECOMPILER ERROR at PC34: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC52: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC59: Unhandled construct in 'MakeBoolean' P3

  if ((not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p2 == nil or (this_sigattrlog[4]).matched) and l_0_1 == nil) or nil == nil then
    return mp.CLEAN
  end
  if not (string.find)(l_0_1, " +h", 1, true) then
    return mp.CLEAN
  end
  local l_0_2 = nil
  if (string.find)(l_0_2, (string.match)(l_0_1, " (%l:\\.+%.class)"), 1, true) then
    if (sysio.IsFileExists)((string.match)(l_0_1, " (%l:\\.+%.class)")) then
      (bm.add_threat_file)((string.match)(l_0_1, " (%l:\\.+%.class)"))
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

