require 'pry'
require 'json'



   def recursiveHashToFSH(prefix, h)
    h.each do | key, body |
        p = ""
        p = prefix + "."  if prefix.length > 0
        p = p + key
        # binding.pry 
        if body.is_a?(Hash) 
            recursiveHashToFSH(p, body)
        elsif body.is_a?(Array)
            body.each_with_index {|val, index| 
            pa = p + "[" + index.to_s + "]"
            # binding.pry 
            if val.is_a?(Hash)
              recursiveHashToFSH(pa, val)
            else
                puts "* #{pa} = \"#{val}\""
            end
        }
        else
            if key == "code" || key == "currency"
                puts "* #{p} = \##{body}"
            elsif key == "value" || key == "sequence"
                puts "* #{p} = #{body}"
            else
                puts "* #{p} = \"#{body}\""
            end
            # binding.pry 
        end
    end

   end


    jsonfile  = ARGV[0] 
   # binding.pry
    s = File.read(jsonfile)
    h = JSON.parse(s)
      binding.pry
    recursiveHashToFSH("", h)
