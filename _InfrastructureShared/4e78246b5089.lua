-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4e78246b5089 

-- params : ...
-- function num : 0
if pehdr.TimeDateStamp >= 1424734844 then
  (mp.set_mpattribute)("HSTR:BrowserModifier:Win32/GoogleToolbarNotifier")
  return mp.CLEAN
end
return mp.INFECTED

