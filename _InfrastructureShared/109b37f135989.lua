-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/109b37f135989 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p2 ~= nil then
      local l_0_1, l_0_2 = (this_sigattrlog[2]).utf8p2
    else
    end
    if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
      do return mp.CLEAN end
      local l_0_3 = (string.lower)((this_sigattrlog[4]).utf8p2)
      if l_0_3 ~= nil and (string.find)(l_0_3, "*.doc", 1, true) and (string.find)(l_0_3, "*.xls", 1, true) and (string.find)(l_0_3, "*.ppt", 1, true) then
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

