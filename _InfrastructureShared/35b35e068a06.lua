-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/35b35e068a06 

-- params : ...
-- function num : 0
if (mp.get_sigattr_event_count)(16385) > 10 and (mp.get_sigattr_event_count)(16386) > 10 then
  return mp.INFECTED
end
return mp.CLEAN

