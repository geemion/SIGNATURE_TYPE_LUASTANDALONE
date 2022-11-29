-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d2b358d007e9 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
  if (string.find)(l_0_0, "\\werfault.exe\\\\debugger", 1, true) or (string.find)(l_0_0, "\\osppsvc.exe\\\\debugger", 1, true) or (string.find)(l_0_0, "\\sppextcomobj.exe\\\\debugger", 1, true) then
    return mp.CLEAN
  end
  local l_0_1 = (this_sigattrlog[1]).utf8p2
  if l_0_1 ~= nil and (string.len)(l_0_1) > 3 then
    l_0_1 = (mp.ContextualExpandEnvironmentVariables)(l_0_1)
    if not (sysio.IsFileExists)(l_0_1) then
      l_0_1 = (string.lower)((bm.get_imagepath)())
    end
    if (mp.IsKnownFriendlyFile)(l_0_1, true, false) == true then
      return mp.CLEAN
    end
    local l_0_2 = (sysio.GetFileLastWriteTime)(l_0_1)
    if ((sysio.GetLastResult)()).Success and l_0_2 ~= 0 then
      l_0_2 = l_0_2 / 10000000 - 11644473600
      local l_0_3 = (MpCommon.GetCurrentTimeT)()
      if l_0_3 < l_0_2 or l_0_3 - (l_0_2) > 600 then
        return mp.CLEAN
      end
    end
    do
      do
        l_0_1 = (string.lower)(l_0_1)
        if (string.find)(l_0_1, "awdump.exe", 1, true) or (string.find)(l_0_1, "awdumpifeo.exe", 1, true) or (string.find)(l_0_1, "AppDeployToolkit_BlockAppExecutionMessage.vbs", 1, true) then
          return mp.CLEAN
        end
        ;
        (mp.ReportLowfi)(l_0_1, 794607441)
        ;
        (bm.add_related_file)(l_0_1)
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

