-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ddb34819a68a 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched then
  local l_0_0, l_0_2 = nil, nil
  if l_0_0 == nil or l_0_0 == "" then
    return mp.CLEAN
  end
  l_0_2 = (string.match)(l_0_0, "\\appdata\\roaming\\([^\\]+)\\[^%.]+%.vbs")
  local l_0_1, l_0_3 = nil
  if l_0_2 ~= nil then
    l_0_1 = string
    l_0_1 = l_0_1.len
    l_0_3 = l_0_2
    l_0_1 = l_0_1(l_0_3)
  end
  if l_0_1 ~= 6 then
    l_0_1 = mp
    l_0_1 = l_0_1.CLEAN
    return l_0_1
  end
  l_0_1 = sysio
  l_0_1 = l_0_1.IsFileExists
  l_0_3 = l_0_0
  l_0_1 = l_0_1(l_0_3)
  if l_0_1 then
    l_0_1 = mp
    l_0_1 = l_0_1.ReportLowfi
    l_0_3 = l_0_0
    l_0_1(l_0_3, 1248478195)
    l_0_1 = bm
    l_0_1 = l_0_1.add_related_file
    l_0_3 = l_0_0
    l_0_1(l_0_3)
    l_0_1 = mp
    l_0_1 = l_0_1.INFECTED
    return l_0_1
  end
end
do
  local l_0_4, l_0_5 = nil
  -- DECOMPILER ERROR at PC58: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC61: Confused about usage of register: R2 in 'UnsetPending'

  if (this_sigattrlog[2]).matched then
    if nil == nil or nil == "" then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC68: Confused about usage of register: R2 in 'UnsetPending'

    -- DECOMPILER ERROR at PC71: Overwrote pending register: R3 in 'AssignReg'

    -- DECOMPILER ERROR at PC76: Confused about usage of register: R3 in 'UnsetPending'

    if nil == nil or (string.len)(nil) ~= 6 then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC85: Confused about usage of register: R2 in 'UnsetPending'

    -- DECOMPILER ERROR at PC91: Confused about usage of register: R2 in 'UnsetPending'

    if (sysio.IsFileExists)(nil) then
      (mp.ReportLowfi)(nil, 3546485321)
      -- DECOMPILER ERROR at PC96: Confused about usage of register: R2 in 'UnsetPending'

      ;
      (bm.add_related_file)(nil)
      return mp.INFECTED
    end
  end
  local l_0_6, l_0_7 = nil
  -- DECOMPILER ERROR at PC109: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC112: Confused about usage of register: R4 in 'UnsetPending'

  if (this_sigattrlog[3]).matched then
    if nil == nil or nil == "" then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC119: Confused about usage of register: R4 in 'UnsetPending'

    -- DECOMPILER ERROR at PC122: Overwrote pending register: R5 in 'AssignReg'

    -- DECOMPILER ERROR at PC127: Confused about usage of register: R5 in 'UnsetPending'

    if nil == nil or (string.len)(nil) ~= 6 then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC136: Confused about usage of register: R4 in 'UnsetPending'

    -- DECOMPILER ERROR at PC142: Confused about usage of register: R4 in 'UnsetPending'

    if (sysio.IsFileExists)(nil) then
      (mp.ReportLowfi)(nil, 2758025951)
      -- DECOMPILER ERROR at PC147: Confused about usage of register: R4 in 'UnsetPending'

      ;
      (bm.add_related_file)(nil)
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

