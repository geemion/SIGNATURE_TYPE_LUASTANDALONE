-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/33d77f38b866 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
do
  if l_0_0 ~= nil then
    local l_0_1 = (string.match)(l_0_0.image_path, "\\([^\\]+)$")
    l_0_1 = (string.lower)(l_0_1)
    if l_0_1 == "msiexec.exe" then
      return mp.CLEAN
    end
  end
  return mp.INFECTED
end

