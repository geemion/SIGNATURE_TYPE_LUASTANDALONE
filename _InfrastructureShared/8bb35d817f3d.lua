-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8bb35d817f3d 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1 = (this_sigattrlog[2]).image_path
    end
    -- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC33: Confused about usage of register: R0 in 'UnsetPending'

    local l_0_2 = (string.lower)(l_0_1)
    if #l_0_2 >= 18 and l_0_2:find("\\windows\\system32\\", 1, true) == nil and l_0_2:find("\\windows\\syswow64\\", 1, true) == nil then
      return mp.INFECTED
    end
    if #l_0_2 >= 13 and l_0_2:sub(-13) ~= "\\schtasks.exe" then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

