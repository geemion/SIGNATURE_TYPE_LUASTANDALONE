-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/141b38ae280cf 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
    local l_0_0 = (string.lower)((this_sigattrlog[3]).utf8p2)
    if (string.find)(l_0_0, " /change ", 1, true) and (string.find)(l_0_0, " /tn ", 1, true) and (string.find)(l_0_0, " /ru ", 1, true) and (string.find)(l_0_0, " /rp ", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

