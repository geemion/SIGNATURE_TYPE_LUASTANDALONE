-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1c3b3fd91fe13 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil, nil
  else
  end
  if (this_sigattrlog[3]).matched then
    local l_0_4 = (string.lower)((this_sigattrlog[3]).utf8p2)
    -- DECOMPILER ERROR at PC37: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC48: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC60: Confused about usage of register: R1 in 'UnsetPending'

    do
      if l_0_4 and (this_sigattrlog[1]).utf8p1 and (string.find)(l_0_4, (string.lower)((this_sigattrlog[1]).utf8p1), 1, true) and (string.find)((string.lower)((this_sigattrlog[1]).utf8p1), "\\appdata\\roaming\\microsoft", 1, true) then
        local l_0_5, l_0_6 = , (string.match)((string.lower)((this_sigattrlog[1]).utf8p1), "(.+\\)([^\\]+)$")
        if l_0_6 then
          if (string.sub)(l_0_6, -27) == "\\appdata\\roaming\\microsoft\\" then
            (mp.ReportLowfi)(l_0_5, 2978130009)
            return mp.INFECTED
          else
            if (string.sub)(l_0_6, -35) == "\\appdata\\roaming\\microsoft\\windows\\" then
              (mp.ReportLowfi)(l_0_5, 680262115)
              return mp.INFECTED
            end
          end
        end
      end
      return mp.CLEAN
    end
  end
end

