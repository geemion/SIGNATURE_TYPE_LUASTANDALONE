-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_JSu2a_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 1048576 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
l_0_1 = (string.gsub)(l_0_1, "&#x(%x%x);", function(l_1_0)
  -- function num : 0_0
  local l_1_1 = string.char
  do
    local l_1_2, l_1_3, l_1_4 = tonumber(l_1_0, 16), .end
    do return l_1_1(l_1_2, l_1_3, l_1_4) end
    -- DECOMPILER ERROR at PC8: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end
)
l_0_1 = (string.gsub)(l_0_1, "&#(%d%d?%d?);", function(l_2_0)
  -- function num : 0_1
  local l_2_1 = string.char
  do
    local l_2_2, l_2_3, l_2_4 = tonumber(l_2_0, 10), .end
    do return l_2_1(l_2_2, l_2_3, l_2_4) end
    -- DECOMPILER ERROR at PC8: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end
)
;
(mp.vfo_add_buffer)(l_0_1, "[JSu2a]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

