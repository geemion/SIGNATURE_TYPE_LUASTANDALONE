-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55b367b9425e 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
  local l_0_1 = (string.match)(l_0_0, "winword%.exe\".+\"(.+%.doc[mx]?\"-)") .. "\000"
  ;
  (mp.ReportLowfi)(l_0_1, 44620243)
  if (string.find)(l_0_1, "\\temporary internet files\\content.outlook", 1, true) then
    (mp.ReportLowfi)(l_0_1, 1615606741)
  else
    if (string.find)(l_0_1, "\\temporary internet files\\content.ie", 1, true) then
      (mp.ReportLowfi)(l_0_1, 3075520265)
    else
      if (string.find)(l_0_1, "\\downloads\\", 1, true) then
        (mp.ReportLowfi)(l_0_1, 2136540056)
      end
    end
  end
  if (this_sigattrlog[4]).matched then
    (mp.ReportLowfi)((this_sigattrlog[4]).utf8p1, 4024544187)
  end
end
do
  return mp.INFECTED
end

