require 'pry'
require 'json'
require 'ndjson'

indir = ARGV[0]
outdir = ARGV[1]
binding.pry 
# iterate over ndjson files in indir
# outdir  where to put individual json files
Dir.glob("#{indir}/*.json") do |jsonfile|
   puts "working on: #{jsonfile}..."
   binding.pry
   parser = NDJSON::Parser.new( jsonfile )
   binding.pry
   parser.each { |l| 
    binding.pry
    
   }
end

# =begin outfile = "#{ARGV[1]}/#{h["resourceType"]}-#{h["id"]}-notes.md"
#     indir = ARGV[0]
#     outdir = ARGV[1]

#     puts "working on: #{indir}..."
#    # binding.pry
#     s = File.read(jsonfile)
#     h = JSON.parse(s)
#     binding.pry 
#     h["entry"].map do |entry |
#       outfile = outdir + "/" + entry["fullUrl"].split("/").join("_") + ".json"
#       puts "outputing #{outfile}"
#       # binding.pry 
#       File.write(outfile, JSON.pretty_generate(entry["resource"]))
#     end
#   =end