require 'pry'
require 'json'


    jsonfile = ARGV[0]
    outdir = ARGV[1]

    puts "working on: #{jsonfile}..."
   # binding.pry
    s = File.read(jsonfile)
    h = JSON.parse(s)
    binding.pry 
    h["entry"].map do |entry |
      outfile = outdir + "/" + entry["fullUrl"].split("/").join("_") + ".json"
      puts "outputing #{outfile}"
      # binding.pry 
      File.write(outfile, JSON.pretty_generate(entry["resource"]))
    end
 