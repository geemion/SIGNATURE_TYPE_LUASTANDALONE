-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5541ed3be6e0 

-- params : ...
-- function num : 0
local l_0_3 = nil
local l_0_4 = nil
local l_0_5 = nil
local l_0_6 = "ftp-brute-"
local l_0_7 = 30
do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = 60
  end
  do
    if (this_sigattrlog[3]).matched then
      local l_0_1 = nil
    end
    do
      if (this_sigattrlog[4]).matched then
        local l_0_2 = nil
      end
      if l_0_3 ~= nil and l_0_4 ~= nil and l_0_5 ~= nil then
        local l_0_8 = nil
        local l_0_9, l_0_10 = 0, 10
        if not pcall(MpCommon.RollingQueueCreate, l_0_6 .. l_0_3 .. "-" .. l_0_4, l_0_7, l_0_8, 1) then
          return mp.CLEAN
        end
        -- DECOMPILER ERROR at PC56: Confused about usage of register: R8 in 'UnsetPending'

        if not pcall(MpCommon.RollingQueueAppend, l_0_6 .. l_0_3 .. "-" .. l_0_4, l_0_5, "", l_0_8) then
          return mp.CLEAN
        end
        -- DECOMPILER ERROR at PC71: Confused about usage of register: R8 in 'UnsetPending'

        if not pcall(MpCommon.RollingQueueCount, l_0_6 .. l_0_3 .. "-" .. l_0_4) then
          return mp.CLEAN
        end
        -- DECOMPILER ERROR at PC85: Confused about usage of register: R8 in 'UnsetPending'

        if l_0_10 <= l_0_9 then
          pcall(MpCommon.RollingQueueErase, l_0_6 .. l_0_3 .. "-" .. l_0_4)
          return mp.INFECTED
        end
      end
      do
        do
          do return mp.CLEAN end
          -- WARNING: undefined locals caused missing assignments!
        end
      end
    end
  end
end

