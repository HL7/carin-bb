# Run gofsh fshoutput --no-alias -o fshoutput
# create the input/pagecontent directory
# cd fshoutput/input/fsh/instances
# grep InstanceOf fshoutput/input/fsh/instances/*.fsh > fshoutput/input/fsh/instances/FileToType.txt

# run ruby fshtomd input output output --- last directory is redundant
# output is in fshoutput/input/pagecontent -- copy into the input/pagecontent of your IG

require "pry"
# input directory ARGV[0] -- fshoutput, the output of gofsh
# output directory ARGV[1] -- typically input/fsh/pagecontent
puts "FSHInput = #{ARGV[0]}"
puts "MDOutput = #{ARGV[1]}"
fshinputfiles = Dir.glob("#{ARGV[0]}/input/fsh/instances/*.fsh")
map_file_path = "#{ARGV[0]}/input/fsh/instances/FileToType.txt"
hash = {}
File.open(map_file_path) do |fp|
  FileToType = {}
  fp.each do |line|
    components = line.chomp.split(":")
    FileToType[components[0]] = components[2].strip
  end
end
fshinputfiles.each { |fsh|
  next if FileToType[fsh] == "SearchParameter"
  next if FileToType[fsh] == "CapabilityStatement"
  instancename = fsh.split("/").last.split(".").first
  fshcontent = File.read(fsh)
  # replace all of the alias strings with their expansion
  notes_file_name = FileToType[fsh] + "-" + instancename + "-notes.md"
  md = ARGV[1] + "/input/pagecontent/" + notes_file_name
  mdfile = File.open(md, "w")
  mdcontent = "```\n" + fshcontent + "\n```"
  mdfile.write(mdcontent)
  mdfile.close()
}
