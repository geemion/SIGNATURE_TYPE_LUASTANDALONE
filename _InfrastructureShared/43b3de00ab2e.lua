-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/43b3de00ab2e 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
  local l_0_0 = (string.lower)((mp.utf16to8)((this_sigattrlog[1]).wp2))
  if (string.find)(l_0_0, ".downloadstring", 1, true) ~= nil then
    do
      do
        if (string.find)(l_0_0, "-dumpcreds", 1, true) ~= nil then
          local l_0_1 = (string.find)(l_0_0, "-computername", 1, true)
        else
        end
        if false ~= nil then
          return mp.INFECTED
        end
        return mp.CLEAN
      end
    end
  end
end

