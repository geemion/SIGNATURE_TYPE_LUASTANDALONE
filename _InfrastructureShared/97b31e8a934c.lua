-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/97b31e8a934c 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1 = nil
local l_0_2 = ((string.lower)((bm.get_imagepath)()))
-- DECOMPILER ERROR at PC20: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

if (((l_0_2 == nil or (string.len)(l_0_2) <= 3 or (this_sigattrlog[1]).matched) and not (this_sigattrlog[2]).matched) or l_0_1 ~= nil) and (string.len)(l_0_1) > 3 then
  for l_0_6 in (string.gmatch)(l_0_1, "%S+") do
    local l_0_3 = nil
    -- DECOMPILER ERROR at PC52: Confused about usage of register: R6 in 'UnsetPending'

    if R6_PC52 ~= nil and (string.len)(R6_PC52) >= 1 and (string.sub)(R6_PC52, 0, 1) ~= "/" then
      if (sysio.IsFileExists)(R6_PC52) then
        (bm.add_related_file)(R6_PC52)
      else
        if l_0_3 ~= nil and (sysio.IsFileExists)(l_0_3 .. R6_PC52) then
          (bm.add_related_file)(l_0_7)
        end
      end
    end
  end
end
do
  local l_0_8 = nil
  -- DECOMPILER ERROR at PC104: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC113: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC118: Confused about usage of register: R3 in 'UnsetPending'

  -- DECOMPILER ERROR at PC124: Confused about usage of register: R3 in 'UnsetPending'

  if (((this_sigattrlog[3]).matched and not (this_sigattrlog[4]).matched) or nil ~= nil) and (string.len)(nil) > 3 then
    for l_0_12 in (string.gmatch)(nil, "%S+") do
      local l_0_9 = nil
      -- DECOMPILER ERROR at PC128: Confused about usage of register: R7 in 'UnsetPending'

      -- DECOMPILER ERROR at PC132: Confused about usage of register: R7 in 'UnsetPending'

      -- DECOMPILER ERROR at PC138: Confused about usage of register: R7 in 'UnsetPending'

      -- DECOMPILER ERROR at PC146: Confused about usage of register: R7 in 'UnsetPending'

      -- DECOMPILER ERROR at PC152: Confused about usage of register: R7 in 'UnsetPending'

      if l_0_3 .. R6_PC52 ~= nil and (string.len)(l_0_3 .. R6_PC52) >= 1 and (string.sub)(l_0_3 .. R6_PC52, 0, 1) ~= "/" then
        if (sysio.IsFileExists)(l_0_3 .. R6_PC52) then
          (bm.add_related_file)(l_0_3 .. R6_PC52)
        else
          -- DECOMPILER ERROR at PC158: Confused about usage of register: R7 in 'UnsetPending'

          if l_0_8 ~= nil and (sysio.IsFileExists)(l_0_8 .. l_0_3 .. R6_PC52) then
            (bm.add_related_file)(l_0_13)
          end
        end
      end
    end
  end
  do
    return mp.INFECTED
  end
end

