-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/e378618f2548_Flags_1 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 65536 or pehdr.NumberOfSections ~= 4 then
  return mp.CLEAN
end
if (pesecs[4]).Name == ".rsrc" and (pesecs[4]).SizeOfRawData >= 32768 then
  if mp.HSTR_WEIGHT >= 2 then
    return mp.SUSPICIOUS
  end
  if (hstrlog[1]).matched or (hstrlog[2]).matched then
    return mp.LOWFI
  end
end
return mp.CLEAN

