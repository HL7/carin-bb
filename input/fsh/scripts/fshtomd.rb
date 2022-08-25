# create the input/pagecontent directory
# from the top level directory invoke fshtomd
# output is in fshoutput/input/pagecontent -- copy into the input/pagecontent of your IG

require "pry"

def GetType(filetext)
   lines = filetext.split("\n")
   # InstanceOf on the 2nd line
    return lines[1].split(":")[1].strip
end
rmoutput = `rm -rf fshoutput`
gofshoutput = `gofsh output --indent --no-alias -o fshoutput`
puts "FSHInput = ./fshoutput/input/fsh/instances"
puts "MDOutput = ./input/pagecontent"
fshinputfiles = Dir.glob("./fshoutput/input/fsh/instances/*.fsh")
fshinputfiles.each { |fsh|
  fshcontent = File.read(fsh)
  filetype = GetType(fshcontent)
  next if filetype == "SearchParameter"
  next if filetype == "CapabilityStatement"
  instancename = fsh.split("/").last.split(".").first
  notes_file_name = filetype + "-" + instancename + "-notes.md"
  md = "input/pagecontent/" + notes_file_name
  mdfile = File.open(md, "w")
  mdcontent = "```\n" + fshcontent + "\n```"
  mdfile.write(mdcontent)
  mdfile.close()
}
