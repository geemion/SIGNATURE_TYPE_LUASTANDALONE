-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7db393e16b8e_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
  local l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p2)
  l_0_0 = (string.gsub)(l_0_0, "\\\\", "\\")
  l_0_1 = (string.gsub)(l_0_1, "\\\\", "\\")
  if l_0_0 == l_0_1 then
    local l_0_2 = (string.lower)((bm.get_imagepath)())
    if l_0_2 then
      local l_0_3 = {}
      l_0_3["powershell.exe"] = true
      l_0_3["wscript.exe"] = true
      l_0_3["cscript.exe"] = true
      l_0_3["mshta.exe"] = true
      l_0_3["cmd.exe"] = true
      l_0_3["rundll32.exe"] = true
      l_0_3["regsvr32.exe"] = true
      l_0_3["msbuild.exe"] = true
      l_0_3["vbcscompiler.exe"] = true
      l_0_3["csc.exe"] = true
      l_0_3["python.exe"] = true
      l_0_3["pythonw.exe"] = true
      l_0_3["winword.exe"] = true
      l_0_3["excel.exe"] = true
      l_0_3["powerpnt.exe"] = true
      local l_0_4 = (string.match)(l_0_2, "\\([^\\]+)$")
      if l_0_3[l_0_4] then
        TrackCustomPersistContextNameByPPID("set", "bm", "MimikatzTrigger")
        return mp.INFECTED
      end
      if (string.find)(l_0_2, "\\windows\\", 1, true) or (string.find)(l_0_2, "\\program files", 1, true) or (string.find)(l_0_2, "\\scanner\\", 1, true) or (string.find)(l_0_2, "\\chrome", 1, true) or (string.find)(l_0_2, "\\programfiles\\", 1, true) then
        return mp.CLEAN
      end
      TrackCustomPersistContextNameByPPID("set", "bm", "MimikatzTrigger")
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

