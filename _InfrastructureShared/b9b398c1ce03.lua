-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b9b398c1ce03 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

  if not (this_sigattrlog[3]).matched or (string.lower)((this_sigattrlog[3]).utf8p1) ~= nil then
    local l_0_4 = nil
    local l_0_5 = (string.sub)((string.lower)((this_sigattrlog[3]).utf8p1), -4)
    if (string.find)("|.asp|aspx|ashx|asmx|", l_0_5, 1, true) then
      if (sysio.IsFileExists)(l_0_4) then
        (bm.add_related_file)(l_0_4)
      end
      return mp.INFECTED
    end
  end
  do
    return mp.CLEAN
  end
end

