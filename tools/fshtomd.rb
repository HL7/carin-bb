# create the input/pagecontent directory
# from the top level directory invoke fshtomd
# output is in fshoutput/input/pagecontent -- copy into the input/pagecontent of your IG

require "pry"

#rmoutput = `rm -rf fshoutput`
gofshoutput = `gofsh output --indent --no-alias -o fshoutput`
puts "JSONInput = ./output"
puts "FSHInput = ./fshoutput/input/fsh/instances"
puts "MDOutput = ./input/pagecontent"
jsoninputfiles = Dir.glob("./output/*.json").map{ |json| json.split("/")[2]}
skiptypes = ["ConceptMap", "StructureDefinition", "ValueSet", "CodeSystem", "CapabilityStatement", "OperationOutcome", "SearchParameter"]
jsoninputfiles.each {|json|
  next if json.count("-") < 1
  filetype = json.split("-")[0]
  next if skiptypes.include?(filetype)
  instancename = ( json.split("-")[1]).split(".")[0]
  if filetype == "SearchParameter"
    instancename = ( json.split("-")[1] + "-" + json.split("-")[2]).split(".")[0]
  end
  fsh = "fshoutput/input/fsh/instances/" + instancename + ".fsh"
  notes_file_name = filetype + "-" + instancename + "-notes.md"
  if !File.exist?(fsh)
    puts "FSH file " + fsh + " does not exist (json = " + json + ") !"
    next
  end
  fshcontent = File.read(fsh)
  md = "input/pagecontent/" + notes_file_name
  mdfile = File.open(md, "w")
  mdcontent = "```\n" + fshcontent + "\n```"
  mdfile.write(mdcontent)
  mdfile.close()
}
