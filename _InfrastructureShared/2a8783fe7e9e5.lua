-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2a8783fe7e9e5 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 197000 then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  ;
  (pe.reemulate)()
end
return mp.INFECTED

