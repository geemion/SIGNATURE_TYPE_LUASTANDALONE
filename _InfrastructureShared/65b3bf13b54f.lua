-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/65b3bf13b54f 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 100000000 then
  return mp.CLEAN
end
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_1) do
  if (string.find)((string.lower)(l_0_6.image_path), "\\rundll32.exe", 1, true) then
    (MpCommon.TurnNriOnProcess)(l_0_6.ppid)
    ;
    (bm.request_SMS)(l_0_6.ppid, "M")
    local l_0_7, l_0_8 = (string.match)(l_0_6.ppid, "^pid:(%w+),ProcessStart:(%w+)$")
    local l_0_9 = tonumber(l_0_7)
    local l_0_10 = tonumber(l_0_8)
    local l_0_11, l_0_12 = (mp.bsplit)(l_0_10, 32)
    local l_0_13 = (string.format)("ppids:{{%d,%d,%d}}\000", l_0_9, l_0_11, l_0_12)
    ;
    (mp.TriggerScanResource)("ems", l_0_13, mp.SCANSOURCE_RTSIG, 5000)
    return mp.INFECTED
  end
end
return mp.CLEAN

