-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55b3c32cd4bc 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_2, l_0_3 = (string.lower)((this_sigattrlog[2]).utf8p2), (bm.get_process_relationships)()
    if l_0_3 == nil then
      return mp.CLEAN
    end
    for l_0_7,l_0_8 in ipairs(l_0_3) do
      local l_0_4 = nil
      -- DECOMPILER ERROR at PC46: Confused about usage of register: R7 in 'UnsetPending'

      if R7_PC46.image_path ~= nil and (string.lower)((string.match)(R7_PC46.image_path, "\\([^\\]+)$")) == "msiexec.exe" then
        return mp.CLEAN
      end
    end
    if l_0_2 ~= nil then
      local l_0_9 = nil
      for l_0_13,l_0_14 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_2)) do
        local l_0_10 = nil
        -- DECOMPILER ERROR at PC87: Confused about usage of register: R8 in 'UnsetPending'

        if (sysio.IsFileExists)((mp.ContextualExpandEnvironmentVariables)((string.lower)((string.match)(R7_PC46.image_path, "\\([^\\]+)$")))) == true then
          (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)((string.lower)((string.match)(R7_PC46.image_path, "\\([^\\]+)$"))))
        end
      end
    end
    do
      return mp.INFECTED
    end
  end
end

