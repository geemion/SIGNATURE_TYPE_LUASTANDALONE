-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3f78095fe43c 

-- params : ...
-- function num : 0
if peattributes.suspicious_image_version and peattributes.suspicious_timestamp and peattributes.isdll and (mp.getfilesize)() < 238592 then
  (pe.set_peattribute)("hstr_exhaustive", true)
  ;
  (pe.reemulate)()
  if mp.HSTR_WEIGHT == 21 then
    return mp.SUSPICIOUS
  end
end
return mp.CLEAN

