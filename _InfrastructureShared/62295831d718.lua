-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/62295831d718 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("/Lua:Worm:JS/Bondat.A!lnk") and (mp.get_mpattribute)("PACKED_WITH:[CMDEmbedded]") then
  local l_0_0 = (mp.GetBruteMatchData)()
  if l_0_0.match_offset ~= 2 then
    return mp.CLEAN
  end
  if l_0_0.is_header then
    local l_0_1 = (mp.getfilesize)()
    do
      if l_0_1 - 2 < 256 then
        local l_0_2, l_0_3, l_0_4 = l_0_1 - 2
      end
      ;
      (mp.readprotection)(false)
      -- DECOMPILER ERROR at PC39: Confused about usage of register: R2 in 'UnsetPending'

      local l_0_5 = nil
      do
        local l_0_6 = nil
        if (((mp.readfile)(l_0_0.match_offset, l_0_2)):lower()):match("\\users\\[^\\]+\\appdata\\roaming\\%l+\\%w+%.exe%z\"(%w:\\users\\[^\\]+\\appdata\\roaming\\%l+\\%l+%.js)\"%z") ~= nil then
          (mp.ReportLowfi)((((mp.readfile)(l_0_0.match_offset, l_0_2)):lower()):match("\\users\\[^\\]+\\appdata\\roaming\\%l+\\%w+%.exe%z\"(%w:\\users\\[^\\]+\\appdata\\roaming\\%l+\\%l+%.js)\"%z"), 593118850)
          return mp.INFECTED
        end
        return mp.CLEAN
      end
    end
  end
end

