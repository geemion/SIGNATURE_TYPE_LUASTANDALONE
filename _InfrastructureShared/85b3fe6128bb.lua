-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/85b3fe6128bb 

-- params : ...
-- function num : 0
local l_0_0 = {}
local l_0_1 = {}
local l_0_2 = {}
local l_0_3 = {}
local l_0_4 = {}
local l_0_5 = {}
local l_0_6 = {}
local l_0_7 = {}
local l_0_8 = "[A-Za-z]"
local l_0_9 = 2
for l_0_13 = 1, mp.SIGATTR_LOG_SZ do
  local l_0_14 = (string.lower)((sigattr_head[l_0_13]).utf8p1)
  if (sigattr_head[l_0_13]).matched then
    if (string.find)(l_0_14, ":\\", 1, true) == 2 then
      local l_0_15 = (string.sub)(l_0_14, 0, 1)
      if (string.len)(l_0_15) == 1 and (string.match)(l_0_15, l_0_8) then
        if (sigattr_head[l_0_13]).attribute == 16384 then
          l_0_0[l_0_15] = 1
        else
          if (sigattr_head[l_0_13]).attribute == 16385 then
            l_0_1[l_0_15] = 1
          else
            if (sigattr_head[l_0_13]).attribute == 16386 then
              l_0_2[l_0_15] = 1
            else
              if (sigattr_head[l_0_13]).attribute == 16387 then
                l_0_3[l_0_15] = 1
              end
            end
          end
        end
      end
    else
      do
        do
          if (string.find)(l_0_14, "\\\\", 1, true) == 0 then
            local l_0_16 = nil
            if (string.find)(l_0_14, "\\", 3, true) then
              l_0_16 = (string.sub)(l_0_14, 2, (string.find)(l_0_14, "\\", 3, true) - 2)
            else
              l_0_16 = (string.sub)(l_0_14, 2)
            end
            if (string.len)(l_0_16) >= 1 and (string.len)(l_0_16) <= 255 then
              if (sigattr_head[l_0_13]).attribute == 16384 then
                l_0_4[l_0_16] = 1
              else
                if (sigattr_head[l_0_13]).attribute == 16385 then
                  l_0_5[l_0_16] = 1
                else
                  if (sigattr_head[l_0_13]).attribute == 16386 then
                    l_0_6[l_0_16] = 1
                  else
                    if (sigattr_head[l_0_13]).attribute == 16387 then
                      l_0_7[l_0_16] = 1
                    end
                  end
                end
              end
            end
          end
          -- DECOMPILER ERROR at PC161: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC161: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC161: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC161: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC161: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
if l_0_9 <= #l_0_0 or l_0_9 <= #l_0_1 or l_0_9 <= #l_0_2 or l_0_9 <= #l_0_3 or l_0_9 <= #l_0_4 or l_0_9 <= #l_0_5 or l_0_9 <= #l_0_6 or l_0_9 <= #l_0_7 then
  return mp.INFECTED
end
return mp.CLEAN

