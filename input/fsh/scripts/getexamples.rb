require 'pry'
require 'json'
examples = {}
files  = ARGV[0] + "/*.json"
Dir.glob(files) do |cs_filename|
    # get json string
    s = File.read(cs_filename)
    # parse and convert JSON to Ruby
    obj = JSON.parse(s)
    name = obj["id"]
    url = File.basename(cs_filename).gsub("json","html")
    resource = obj["resourceType"]
    profile = obj["meta"]["profile"][0].split('/').last
    profileURL = "StructureDefinition-#{profile}.html"
    # binding.pry 
    examples[name] = {:resource => resource, :profile => profile, :profileURL => profileURL, :url => url, :name => name}
end

examples = examples.sort_by { |key| key }.to_h
binding.pry
puts "vvvvvvvvvEXAMPLESvvvvvvvvv"
examples.each{ |title, value|
    puts "<tr>"
    puts "<td>#{value[:resource]}</td>"
    puts "<td><a href=\"#{value[:profileURL]}\">#{value[:profile]}</a></td>"
    puts "<td><a href=\"#{value[:url]}\">#{value[:name]}</a></td>"
    puts "</tr>"
}
puts "^^^^^^^^EXAMPLES^^^^^^^"

