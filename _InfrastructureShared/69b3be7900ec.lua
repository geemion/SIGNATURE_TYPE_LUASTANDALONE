-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69b3be7900ec 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
    local l_0_0 = (string.lower)((this_sigattrlog[4]).utf8p2)
    if (string.find)(l_0_0, "mailto:", 1, true) then
      return mp.CLEAN
    end
  end
  return mp.INFECTED
end

