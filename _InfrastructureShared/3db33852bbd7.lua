-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3db33852bbd7 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = ((this_sigattrlog[1]).utf8p2):lower()
  local l_0_1 = 0
  l_0_0 = l_0_0:match("\\powershell%.exe\"(.+)$")
  if l_0_0 ~= nil then
    l_0_0 = l_0_0 .. " "
    l_0_0 = l_0_0:gsub("(%s%w:)%s", " ")
    -- DECOMPILER ERROR at PC32: Overwrote pending register: R1 in 'AssignReg'

    if l_0_1 == 1 then
      l_0_0 = l_0_0:gsub("(%ssuspend%-bitlocker)%s", " ")
      if l_0_1 == 1 then
        l_0_0 = l_0_0:gsub(" ", "")
        if l_0_0 == "" then
          return mp.INFECTED
        end
      end
    end
  end
end
do
  return mp.CLEAN
end

