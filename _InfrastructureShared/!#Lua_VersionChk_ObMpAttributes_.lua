-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_VersionChk_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = l_0_0.InternalName
local l_0_2 = l_0_0.OriginalFilename
if l_0_1 then
  (mp.set_mpattribute)("LUA:2")
  for l_0_6 = 32, 47 do
    local l_0_7 = (string.format)("%c%c%c%c", l_0_6, l_0_6, l_0_6, l_0_6)
    if (string.find)(l_0_1, l_0_7, 1, true) ~= nil then
      do
        do
          (mp.set_mpattribute)("LUA:PEAnomaly_SpecialInternalName")
          do break end
          -- DECOMPILER ERROR at PC42: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC42: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC42: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
if l_0_2 then
  for l_0_11 = 32, 47 do
    local l_0_12 = (string.format)("%c%c%c%c", l_0_11, l_0_11, l_0_11, l_0_11)
    if (string.find)(l_0_2, l_0_12, 1, true) ~= nil then
      do
        do
          (mp.set_mpattribute)("LUA:PEAnomaly_SpecialOrigName")
          do break end
          -- DECOMPILER ERROR at PC71: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC71: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC71: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
return mp.CLEAN

