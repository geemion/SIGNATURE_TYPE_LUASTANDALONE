-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8cb343bdd720_Includes_BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC15: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  local l_0_2 = nil
  local l_0_3 = contains
  local l_0_4 = l_0_2
  l_0_3 = l_0_3(l_0_4, {"RestartHealthService.js", "spiceworks_upload.vbs", "MDRCrawler", "checkservices.dll", "SetupInfObjectInstallAction", "InstallFonts.vbs", "ClearCache.vbs"})
  if l_0_3 then
    l_0_3 = mp
    l_0_3 = l_0_3.CLEAN
    return l_0_3
  end
  l_0_3 = contains
  l_0_4 = l_0_2
  l_0_3 = l_0_3(l_0_4, "cmd.*/c", false)
  if l_0_3 then
    l_0_3 = contains
    l_0_4 = l_0_2
    l_0_3 = l_0_3(l_0_4, {" regsvr32", " rundll32", " mshta", " bitsadmin"})
    if l_0_3 then
      l_0_3 = reportSessionInformation
      l_0_3()
      l_0_3 = add_parents
      l_0_3()
      l_0_3 = mp
      l_0_3 = l_0_3.INFECTED
      return l_0_3
    end
  end
  l_0_3 = mp
  l_0_3 = l_0_3.CLEAN
  return l_0_3
end

