-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/428f9f867a11 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched or (hstrlog[2]).matched then
  if (hstrlog[1]).matched and (hstrlog[2]).matched then
    return mp.CLEAN
  end
  if (hstrlog[3]).hitcount == 1 and (hstrlog[4]).hitcount == 1 then
    if (mp.get_mpattribute)("PACKED_WITH:(ActiveMime)") or (mp.get_mpattribute)("PACKED_WITH:(Base64)") then
      return mp.INFECTED
    end
    return mp.LOWFI
  end
end
return mp.CLEAN

