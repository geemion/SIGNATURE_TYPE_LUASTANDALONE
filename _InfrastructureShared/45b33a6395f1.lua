-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/45b33a6395f1 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
if l_0_0 == nil then
  return mp.CLEAN
end
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if l_0_6.image_path ~= nil then
    local l_0_7 = "svchost.exe|taskeng.exe|taskhostw.exe"
    local l_0_8 = (string.lower)((string.match)(l_0_6.image_path, "\\([^\\]+)$"))
    if l_0_8 ~= nil and (string.find)(l_0_7, l_0_8) then
      local l_0_9 = "c:\\windows\\system32\\tasks"
      ;
      (mp.TriggerScanResource)("folder", l_0_9)
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

