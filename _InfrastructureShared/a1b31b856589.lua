-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a1b31b856589 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  local l_0_7 = (string.lower)((string.match)(l_0_6.image_path, "/([^/]+)$"))
  if l_0_7 == "java" or l_0_7 == "sshd" then
    local l_0_8 = (string.lower)((mp.GetProcessCommandLine)(l_0_6.ppid))
    if (string.find)(l_0_8, "catalina.base=/usr/share/tomcat", 1, true) then
      return mp.INFECTED
    end
    if l_0_8 == "sshd" then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

