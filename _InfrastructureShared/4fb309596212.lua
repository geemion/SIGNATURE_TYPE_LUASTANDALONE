-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4fb309596212 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[2]).matched and (this_sigattrlog[3]).matched then
  local l_0_0 = ((bm.get_imagepath)()):lower()
  if not (string.find)(l_0_0, "/bin/find", 1, true) then
    return mp.CLEAN
  end
  local l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p2)
  local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
  local l_0_3 = (string.lower)((this_sigattrlog[2]).utf8p2)
  local l_0_4 = (string.lower)((this_sigattrlog[3]).utf8p2)
  if l_0_2 ~= nil and l_0_3 ~= nil and l_0_4 ~= nil then
    local l_0_5 = nil
    for l_0_9,l_0_10 in ipairs(l_0_2) do
      l_0_5 = tostring(l_0_10) .. ".crypt"
      if (string.find)(l_0_3, l_0_5, 1, true) and (string.find)(l_0_4, l_0_5, 1, true) and (string.find)(l_0_4, tostring(l_0_10), 1, true) then
        return mp.INFECTED
      end
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.CLEAN
  return l_0_0
end

