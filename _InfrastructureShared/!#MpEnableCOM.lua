-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#MpEnableCOM 

-- params : ...
-- function num : 0
if peattributes.hasexports ~= true then
  return mp.CLEAN
end
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if (mp.getfilesize)() > 131072 then
  return mp.CLEAN
end
if pehdr.Machine ~= 332 then
  return mp.CLEAN
end
return mp.INFECTED

