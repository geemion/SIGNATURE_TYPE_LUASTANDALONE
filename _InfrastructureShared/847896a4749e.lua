-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/847896a4749e 

-- params : ...
-- function num : 0
if (((not (hstrlog[1]).matched and not (hstrlog[2]).matched) or (not (hstrlog[3]).matched and not (hstrlog[4]).matched) or (not (hstrlog[5]).matched and not (hstrlog[6]).matched and not (hstrlog[7]).matched) or (mp.get_mpattribute)("reads_vdll_code"))) then
  return mp.INFECTED
end
return mp.LOWFI

