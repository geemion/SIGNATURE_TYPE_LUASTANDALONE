-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/67b3f29a29f9 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched then
    local l_0_0 = nil
    if (string.find)(l_0_0, "find", 1, true) and (string.find)(l_0_0, "-perm", 1, true) and ((string.find)(l_0_0, "2000", 1, true) or (string.find)(l_0_0, "4000", 1, true) or (string.find)(l_0_0, "6000", 1, true) or (string.find)(l_0_0, "writable", 1, true) or (string.find)(l_0_0, "-2", 1, true)) then
      return mp.INFECTED
    else
      if (string.find)(l_0_0, "find", 1, true) and (string.find)(l_0_0, "-name", 1, true) and ((string.find)(l_0_0, ".htpasswd", 1, true) or (string.find)(l_0_0, ".bash_history", 1, true) or (string.find)(l_0_0, ".fetchmailrc", 1, true) or (string.match)(l_0_0, "(.+conf.+.php)")) then
        return mp.INFECTED
      end
    end
  end
  return mp.CLEAN
end

