-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#AvTempFile_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if not l_0_0 or not l_0_1 then
    return mp.CLEAN
  end
  if l_0_1 == "clamscan.exe" and (string.find)(l_0_0, "clamav%-[%w]+%.[%w]+%.clamtmp") then
    return mp.INFECTED
  end
  if l_0_1 == "avp.exe" and (string.find)(l_0_0, "windows\\temp\\ioc[%w]+%.tmp") then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

