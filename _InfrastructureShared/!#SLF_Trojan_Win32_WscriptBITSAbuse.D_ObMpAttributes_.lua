-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_Trojan_Win32_WscriptBITSAbuse.D_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) ~= "nsservice.exe" then
  return mp.CLEAN
end
if (string.lower)((string.match)((mp.getfilename)(), "(%.[^%.]+)$")) ~= ".vbs" then
  return mp.CLEAN
end
return mp.INFECTED

