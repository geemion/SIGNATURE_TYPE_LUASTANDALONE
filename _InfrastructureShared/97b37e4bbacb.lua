-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/97b37e4bbacb 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[1]).utf8p2)
  do
    do
      if l_0_0:len() > 13 and (string.sub)(l_0_0, -13) == "\\win32spl.dll" then
        local l_0_1 = (string.lower)((bm.get_imagepath)())
        if (string.sub)(l_0_1, -11) == "svchost.exe" then
          return mp.CLEAN
        end
      end
      ;
      (bm.add_related_file)(l_0_0)
      return mp.INFECTED
    end
  end
end

