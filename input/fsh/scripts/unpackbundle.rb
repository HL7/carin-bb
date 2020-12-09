require 'pry'
require 'json'


    jsonfile = ARGV[0]
    outdir = ARGV[1]

    puts "working on: #{jsonfile}..."
   # binding.pry
    s = File.read(jsonfile)
    h = JSON.parse(s)
    h["entry"].map do |entry |
      binding.pry 
      resource = entry["resource"]
      outfile = outdir + "/" + resource["resourceType"] + "_" + resource["id"] + ".json"
      puts "outputing #{outfile}"
      # binding.pry 
      File.write(outfile, JSON.pretty_generate(entry["resource"]))
    end
 