-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B 

-- params : ...
-- function num : 0
GetRuleInfo = function()
  -- function num : 0_0
  local l_1_0 = {}
  l_1_0.Name = "Block Win32 API calls from Office macro"
  l_1_0.Description = "Windows Defender Exploit Guard detected use of Win32 APIs from Macro code in Office files"
  l_1_0.NotificationDedupingInterval = 120
  l_1_0.NotificationDedupingScope = HIPS.DEDUPE_SCOPE_UI
  return l_1_0
end

GetCommandLineRegExp = function()
  -- function num : 0_1
  return "((windowsapps\\\\[^\\\\]+\\\\)|(microsoft office\\\\(root\\\\)?))office..\\\\[^\\.]+\\.exe\\\"?[^\\\"]+\\\"([^\\\"]+)\\\""
end


