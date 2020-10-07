                                                                                                                                                                                                                                                            require 'pry'
require 'json'



   def recursiveHashToFSH(prefix, h,o )
    h.each do | key, body |
        p = ""
        p = prefix + "."  if prefix.length > 0
        p = p + key
        # binding.pry 
        if body.is_a?(Hash) 
            recursiveHashToFSH(p, body,o )
        elsif body.is_a?(Array)
            body.each_with_index {|val, index| 
            pa = p + "[" + index.to_s + "]"
            # binding.pry 
            if val.is_a?(Hash)
              recursiveHashToFSH(pa, val,o)
            else
                o.puts "* #{pa} = \"#{val}\""
            end
        }
        else
            if key == "code" || key == "currency"
                o.puts "* #{p} = \##{body}"
            elsif key == "value" || key == "sequence"
                o.puts "* #{p} = #{body}"
            else
                o.puts "* #{p} = \"#{body}\""
            end
            # binding.pry 
        end
    end

   end


    indir = ARGV[0]
    outdir = ARGV[1]

    Dir.glob("#{ARGV[0]}/*.json") do |jsonfile|
       puts "working on: #{jsonfile} "
   # binding.pry
    s = File.read(jsonfile)
    h = JSON.parse(s)
    outfile = "#{ARGV[1]}/#{h["resourceType"]}-#{h["id"]}.fsh"
    puts "writing to #{outfile}"
    o = File.open(outfile,"w")     
    binding.pry
    recursiveHashToFSH("",h,o)
    o.close
    end
