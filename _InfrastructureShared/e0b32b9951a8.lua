-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/e0b32b9951a8 

-- params : ...
-- function num : 0
if mp.SIGATTR_LOG_SZ == 0 then
  return mp.CLEAN
end
local l_0_0 = {}
for l_0_4 = mp.SIGATTR_LOG_SZ, 1, -1 do
  local l_0_5 = sigattr_tail[l_0_4]
  if l_0_5.attribute == 16435 then
    local l_0_6 = l_0_5.utf8p1
    if l_0_6 then
      local l_0_7 = (string.format)("virtualalloc: %s", l_0_6)
      if not l_0_0[l_0_7] then
        (bm.add_related_string)("cs_al", l_0_7, bm.RelatedStringBMReport)
        l_0_0[l_0_7] = true
      end
    end
  end
  do
    if l_0_5.attribute == 16505 then
      local l_0_8 = l_0_5.utf8p2
      if l_0_8 then
        local l_0_9 = (string.match)(l_0_8, "regionsize:(%d+)")
        if l_0_9 then
          local l_0_10 = (string.format)("protectvm: %s", l_0_9)
          if not l_0_0[l_0_10] then
            (bm.add_related_string)("cs_al", l_0_10, bm.RelatedStringBMReport)
            l_0_0[l_0_10] = true
          end
        end
      end
    end
    do
      if l_0_5.attribute == 16523 then
        local l_0_11 = l_0_5.utf8p1
        if l_0_11 then
          local l_0_12 = (string.format)("mapview: %s", l_0_11)
          if not l_0_0[l_0_12] then
            (bm.add_related_string)("cs_al", l_0_12, bm.RelatedStringBMReport)
            l_0_0[l_0_12] = true
          end
        end
      end
      do
        -- DECOMPILER ERROR at PC88: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC88: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
end
local l_0_13 = false
for l_0_17,l_0_18 in pairs(l_0_0) do
  l_0_13 = true
  do break end
end
do
  if not l_0_13 then
    return mp.CLEAN
  end
  return mp.INFECTED
end

