-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25b3843506d9 

-- params : ...
-- function num : 0
do
  if mp.ENGINEBUILD >= 10134 then
    local l_0_0 = (string.lower)((bm.get_imagepath)())
    if (string.sub)(l_0_0, -10) == "winrar.exe" or (string.sub)(l_0_0, -9) == "unrar.exe" then
      return mp.CLEAN
    end
  end
  return mp.INFECTED
end

