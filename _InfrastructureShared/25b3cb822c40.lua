-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25b3cb822c40 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
do
  if l_0_0 then
    local l_0_1 = {}
    l_0_1["powershell.exe"] = true
    l_0_1["wscript.exe"] = true
    l_0_1["cscript.exe"] = true
    l_0_1["mshta.exe"] = true
    l_0_1["cmd.exe"] = true
    l_0_1["rundll32.exe"] = true
    l_0_1["regsvr32.exe"] = true
    l_0_1["msbuild.exe"] = true
    l_0_1["vbcscompiler.exe"] = true
    l_0_1["csc.exe"] = true
    l_0_1["python.exe"] = true
    l_0_1["pythonw.exe"] = true
    l_0_1["winword.exe"] = true
    l_0_1["excel.exe"] = true
    l_0_1["powerpnt.exe"] = true
    if l_0_1[(string.match)(l_0_0, "\\([^\\]+)$")] then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

