-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2db375246233 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = (string.lower)((mp.utf16to8)((this_sigattrlog[1]).wp1))
    if l_0_0 ~= nil and (string.find)(l_0_0, "\\%d+%.exe") ~= nil then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

