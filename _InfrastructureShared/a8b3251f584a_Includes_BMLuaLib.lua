-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a8b3251f584a_Includes_BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_5, l_0_6 = nil, nil
  else
  end
  -- DECOMPILER ERROR at PC36: Confused about usage of register: R0 in 'UnsetPending'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or contains((this_sigattrlog[2]).utf8p2, "%-[eE][ncodemaNCODEMA]*%s+", false) then
      local l_0_4, l_0_7 = , NormalizeCmdline("powershell", (this_sigattrlog[2]).utf8p2)
      if not contains(l_0_7, "downloadstring") then
        return mp.CLEAN
      end
      l_0_4 = l_0_7
    end
    local l_0_8 = nil
    if not contains(l_0_8, {"iex", "invoke-expression"}) then
      return mp.CLEAN
    end
    local l_0_9 = nil
    if contains(l_0_8, {"github.com", "raw.githubusercontent.com", "bit.ly", "bitly.com", "bitbucket.org", "dropbox.com", "transfer.sh", "webhook.site", "ufile.io"}) then
      (bm.add_related_string)("PSPublicStager_cmdline", l_0_8, bm.RelatedStringBMReport)
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

