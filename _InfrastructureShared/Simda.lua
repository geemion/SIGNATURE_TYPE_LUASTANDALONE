-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/Simda 

-- params : ...
-- function num : 0
if (Remediation.Threat).Active then
  for l_0_3,l_0_4 in pairs((Remediation.Threat).Resources) do
    if l_0_4.Schema == "file" and not (string.match)((Remediation.Threat).Name, "^Virus:WinNT/Simda") then
      (Remediation.BtrDeleteFile)(l_0_4.Path)
    end
  end
end

