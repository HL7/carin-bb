# create the input/pagecontent directory
# from the top level directory invoke fshtomd
# output is in fshoutput/input/pagecontent -- copy into the input/pagecontent of your IG

require "pry"

rmoutput = `rm -rf fshoutput`
gofshoutput = `gofsh output --indent --no-alias -o fshoutput`
puts "JSONInput = ./output"
puts "FSHInput = ./fshoutput/input/fsh/instances"
puts "MDOutput = ./input/pagecontent"
jsoninputfiles = Dir.glob("./output/*.json").map{ |json| json.split("/")[2]}
binding.pry
puts jsoninputfiles
skiptypes = ["ConceptMap", "StructureDefinition", "ValueSet", "CodeSystem", "CapabilityStatement", "OperationOutcome"]
jsoninputfiles.each {|json|
  puts json
  # next if json.count("-") < 1
  filetype = json.split("-")[0]
  next if skiptypes.include?(filetype)
  instancename = (json.split("-")[1] + "-" + json.split("-")[2]).split(".")[0]
  fsh = "fshoutput/input/fsh/instances/" + instancename + ".fsh"
  puts instancename
  notes_file_name = filetype + "-" + instancename + "-notes.md"
  fshcontent = File.read(fsh)
  md = "input/pagecontent/" + notes_file_name
  mdfile = File.open(md, "w")
  mdcontent = "```\n" + fshcontent + "\n```"
  mdfile.write(mdcontent)
  mdfile.close()
}
