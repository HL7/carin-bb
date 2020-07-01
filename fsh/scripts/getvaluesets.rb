require 'pry'
require 'json'
files  = ARGV[0] + "/CodeSystem-*.json"
valuesets = {}
codesystems = {}
Dir.glob(files) do |cs_filename|
    # get json string
    s = File.read(cs_filename)
    # parse and convert JSON to Ruby
    obj = JSON.parse(s)
    name = obj["id"]
    url = File.basename(cs_filename).gsub("json","html")
    description = obj["description"]
    title = obj["title"]
    codesystems[title] = {:title => title, :url => url, :name => name, :description => description}
end
binding.pry 
files  = ARGV[0] + "/ValueSet-*.json"
Dir.glob(files) do |cs_filename|
    # get json string
    s = File.read(cs_filename)
    # parse and convert JSON to Ruby
    obj = JSON.parse(s)
    name = obj["id"]
    url = File.basename(cs_filename).gsub("json","html")
    description = obj["description"]
    title = obj["title"]
    valuesets[title] = {:title => title, :url => url, :name => name, :description => description}
end

valuesets = valuesets.sort_by { |key| key }.to_h
codesystems = codesystems.sort_by { |key| key }.to_h
binding.pry
puts "vvvvvvvvvCODESYSTEMSvvvvvvvvv"
codesystems.each{ |title, value|
    puts "<tr>"
    puts "<td><a href=\"#{value[:url]}\">#{value[:title]}</a></td>"
    puts "<td>#{value[:description]}</td>"
    puts "</tr>"
}
puts "^^^^^^^^CODESYSTEMS^^^^^^^"
puts "vvvvvvvvvVALUESETSvvvvvvvvv"
valuesets.each{ |title, value|
    puts "<tr>"
    puts "<td><a href=\"#{value[:url]}\">#{value[:title]}</a></td>"
    puts "<td>#{value[:description]}</td>"
    puts "</tr>"
}
puts "^^^^^^^^ValueSets^^^^^^^"

#    puts "<tr>"
#    puts "<td> <a href=\"#{url}\">#{title}</a></td>"
#    puts "<td> #{description}</td>"
 #   puts "</tr>"
