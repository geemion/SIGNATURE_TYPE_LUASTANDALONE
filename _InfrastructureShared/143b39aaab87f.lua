-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/143b39aaab87f 

-- params : ...
-- function num : 0
local l_0_0 = false
local l_0_1 = false
local l_0_2 = nil
local l_0_3, l_0_4 = (bm.get_process_relationships)()
for l_0_8,l_0_9 in ipairs(l_0_3) do
  l_0_2 = l_0_9.ppid
  local l_0_10, l_0_11 = (bm.get_process_relationships)(l_0_2)
  for l_0_15,l_0_16 in ipairs(l_0_10) do
    if l_0_16.image_path ~= nil then
      local l_0_17 = (string.lower)((MpCommon.PathToWin32Path)(l_0_16.image_path))
      if not (string.find)(l_0_17, "\\calc.exe", -9, true) then
        local l_0_18 = l_0_16.ppid
        if (sysio.IsFileExists)(l_0_17) and not (mp.IsKnownFriendlyFile)(l_0_17, true, false) then
          (bm.add_related_file)(l_0_17)
          ;
          (bm.request_SMS)(l_0_18, "m+")
          l_0_0 = true
        end
      end
    end
  end
  if not (MpCommon.IsFriendlyProcess)(l_0_2) then
    (bm.add_related_process)(l_0_2)
    ;
    (bm.request_SMS)(l_0_2, "m+")
    l_0_1 = true
  end
end
if l_0_0 == false and l_0_3 ~= nil and l_0_1 == false then
  (bm.request_SMS)(l_0_2, "m+")
end
return mp.INFECTED

