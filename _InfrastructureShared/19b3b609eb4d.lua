-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/19b3b609eb4d 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p2
  if l_0_0 ~= nil and (string.len)(l_0_0) > 3 then
    local l_0_1 = ((string.lower)((bm.get_imagepath)()))
    local l_0_2 = nil
    if l_0_1 ~= nil and (string.len)(l_0_1) > 3 then
      l_0_2 = (string.match)(l_0_1, "(.-)[^\\]-[^\\%.]+$")
    end
    for l_0_6 in (string.gmatch)(l_0_0, "%S+") do
      if (sysio.IsFileExists)(l_0_6) then
        (bm.add_related_file)(l_0_6)
      else
        if l_0_2 ~= nil and (string.len)(l_0_2) > 3 then
          local l_0_7 = l_0_2 .. l_0_6
          if (sysio.IsFileExists)(l_0_7) then
            (bm.add_related_file)(l_0_6)
          end
        end
      end
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.INFECTED
  return l_0_0
end

