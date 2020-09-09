require 'pry'
require 'json'



   def recursiveHashToFSH(prefix, h,o)
    #binding.pry 
    h.each do | key, body |
        p = ""
        p = prefix + "."  if prefix.length > 0
        p = p + key
        # binding.pry 
        if body.is_a?(Hash) 
            recursiveHashToFSH(p, body,o)
        elsif body.is_a?(Array)
            body.each_with_index {|val, index| 
            pa = p + "[" + index.to_s + "]"
            # binding.pry 
            if val.is_a?(Hash)
              recursiveHashToFSH(pa, val,o)
            else
                o.puts "<tr><td>#{pa}</td><td>\"#{val}\"</td></tr>"
            end
        }
        else
            o.puts "<tr><td>#{p}</td><td>"
            if key == "code" || key == "currency"
                o.puts "\##{body}"
            elsif key == "value" || key == "sequence"
                o.puts "#{body}"
            else
                o.puts "\"#{body}\""
            end
            o.puts "</td></tr>"
            # binding.pry 
        end
    end

   end

    indir = ARGV[0]
    outdir = ARGV[1]
# iterate over json files in indir, should be fsh/build/input/examples
# outdir  should fsh/build/input/pagecontent
    Dir.glob("#{ARGV[0]}/*.json") do |jsonfile|
       puts "working on: #{jsonfile}..."
   # binding.pry
    s = File.read(jsonfile)
    h = JSON.parse(s)
    outfile = "#{ARGV[1]}/#{h["resourceType"]}-#{h["id"]}-notes.md"
    puts "writing to #{outfile}"
    o = File.open(outfile,"w")
    o.puts "<table border=\"1\"><tr><td><b>Field</b></td><td><b>Value</b></td></tr>"       
    #binding.pry
    recursiveHashToFSH("", h,o)
    o.puts "</table>"
    o.close
    end