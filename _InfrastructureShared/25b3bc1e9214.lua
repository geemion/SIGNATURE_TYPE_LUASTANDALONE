-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25b3bc1e9214 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.ExpandEnvironmentVariables)("%ExchangeInstallPath%")
if l_0_0 == nil or l_0_0 == "" or l_0_0 == "%ExchangeInstallPath%" then
  return mp.CLEAN
end
if not (sysio.IsFileExists)(l_0_0 .. "bin\\Microsoft.Exchange.Store.Service.exe") then
  return mp.CLEAN
end
return mp.INFECTED

