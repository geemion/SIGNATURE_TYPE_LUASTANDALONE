-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/10861b420c56b 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 2 then
  if pehdr.Machine == 34404 then
    (mp.changedetectionname)(805306678)
  end
  return mp.INFECTED
end
return mp.CLEAN

