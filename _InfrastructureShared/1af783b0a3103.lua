-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1af783b0a3103 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("HSTR:BrowserModifier:Win32/MeninchSP.A")
if mp.HSTR_WEIGHT >= 32 then
  local l_0_0 = (string.lower)((mp.getfilename)())
  local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
  if (string.match)(l_0_2, "umbrella%d*_bkp%.exe") then
    return mp.CLEAN
  else
    return mp.INFECTED
  end
end
do
  if not (mp.get_mpattribute)("do_exhaustivehstr_rescan") then
    (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  end
  return mp.CLEAN
end

