-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8f7869344de2 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT < 20 then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  return mp.LOWFI
end
if pehdr.Subsystem == 1 then
  (mp.changedetectionname)(805306386)
else
  if (hstrlog[4]).matched ~= true then
    (mp.changedetectionname)(805306397)
  end
end
return mp.INFECTED

