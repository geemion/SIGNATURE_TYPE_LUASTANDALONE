-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/19b3ada775f6_Includes_BMLuaLib 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[1]).utf8p1
local l_0_1 = (bm.get_current_process_startup_info)()
local l_0_2 = l_0_1.command_line
if l_0_2 ~= nil and not (string.find)(l_0_2, "services.exe", 1, true) then
  return mp.CLEAN
end
if (sysio.IsFileExists)(l_0_0) and (mp.IsKnownFriendlyFile)(l_0_0, false, false) == false then
  local l_0_3 = (MpCommon.GetPersistContextNoPath)("ServiceBinHijack")
  if l_0_3 ~= nil then
    for l_0_7,l_0_8 in ipairs(l_0_3) do
      if (string.lower)(l_0_8) == (string.lower)(l_0_0) then
        (bm.add_related_file)(l_0_0)
        return mp.INFECTED
      end
    end
  end
end
do
  l_0_3 = mp
  l_0_3 = l_0_3.CLEAN
  return l_0_3
end

