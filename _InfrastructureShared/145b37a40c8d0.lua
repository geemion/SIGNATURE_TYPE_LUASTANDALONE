-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/145b37a40c8d0 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = nil
  if (this_sigattrlog[2]).matched then
    l_0_0 = (this_sigattrlog[2]).utf8p2
  else
    if (this_sigattrlog[3]).matched then
      l_0_0 = (this_sigattrlog[3]).utf8p2
    else
      if (this_sigattrlog[4]).matched then
        l_0_0 = (this_sigattrlog[4]).utf8p2
      else
        if (this_sigattrlog[5]).matched then
          l_0_0 = (this_sigattrlog[5]).utf8p2
        else
          if (this_sigattrlog[6]).matched then
            l_0_0 = (this_sigattrlog[6]).utf8p2
          else
            if (this_sigattrlog[7]).matched then
              l_0_0 = (this_sigattrlog[7]).utf8p2
            else
              if (this_sigattrlog[8]).matched then
                l_0_0 = (this_sigattrlog[8]).utf8p2
              else
                if (this_sigattrlog[9]).matched then
                  l_0_0 = (this_sigattrlog[9]).utf8p2
                else
                  if (this_sigattrlog[10]).matched then
                    l_0_0 = (this_sigattrlog[10]).utf8p2
                  else
                    if (this_sigattrlog[11]).matched then
                      l_0_0 = (this_sigattrlog[11]).utf8p2
                    else
                      if (this_sigattrlog[12]).matched then
                        l_0_0 = (this_sigattrlog[12]).utf8p2
                      else
                        if (this_sigattrlog[13]).matched then
                          l_0_0 = (this_sigattrlog[13]).utf8p2
                        else
                          if (this_sigattrlog[14]).matched then
                            l_0_0 = (this_sigattrlog[14]).utf8p2
                          else
                            if (this_sigattrlog[15]).matched then
                              l_0_0 = (this_sigattrlog[15]).utf8p2
                            else
                              if (this_sigattrlog[16]).matched then
                                l_0_0 = (this_sigattrlog[16]).utf8p2
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  if not l_0_0 then
    return mp.CLEAN
  end
  local l_0_1 = (this_sigattrlog[1]).utf8p2
  if not l_0_1 then
    return mp.CLEAN
  end
  if l_0_1 == l_0_0 then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

