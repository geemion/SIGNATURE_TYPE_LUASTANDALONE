-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4d7835a16259_Includes_HstrLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
if (mp.GetHSTRCallerId)() ~= mp.HSTR_CALLER_SMS then
  return mp.CLEAN
end
if (mp.GetSMSProcArchitecture)() == mp.SMS_PROC_ARCH_X64 then
  return mp.CLEAN
end
local l_0_0 = (mp.GetSMSMemRanges)()
local l_0_1 = (mp.hstr_full_log)()
local l_0_2 = 0
for l_0_6,l_0_7 in ipairs(l_0_1) do
  if l_0_7.matched and isSafeToRead(l_0_0, l_0_7.VA, 4) then
    local l_0_8 = (mp.ReadProcMem)(l_0_7.VA, 4)
    if (mp.readu_u32)(l_0_8, 1) == 8 then
      do
        do
          l_0_2 = l_0_7.VA + 1
          do break end
          -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
if l_0_2 == 0 then
  return mp.CLEAN
end
if not pcallEx("maceExtract_CobaltStrike", maceExtract_CobaltStrike, l_0_2) or #"maceExtract_CobaltStrike" < 3000 then
  return mp.CLEAN
end
return mp.INFECTED

