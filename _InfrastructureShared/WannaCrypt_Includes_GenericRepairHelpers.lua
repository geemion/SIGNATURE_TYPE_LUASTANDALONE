-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/WannaCrypt_Includes_GenericRepairHelpers 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.ExpandEnvironmentVariables)("%SystemRoot%")
local l_0_1 = (MpCommon.ExpandEnvironmentVariables)("%ProgramData%")
local l_0_2 = (MpCommon.ExpandEnvironmentVariables)("%temp%")
if l_0_0 then
  (MpDetection.ScanResource)("folder://" .. l_0_0 .. "\\intel")
end
if l_0_1 then
  (MpDetection.ScanResource)("folder://" .. l_0_1)
end
if l_0_2 then
  (MpDetection.ScanResource)("folder://" .. l_0_2)
end

