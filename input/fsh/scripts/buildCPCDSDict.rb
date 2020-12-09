require 'pry'
require 'json'
require 'roo'
require 'roo'

fileHtml = File.new("cpcdsdict.html", "w+")

fileHtml.puts "<HTML>"
fileHtml.puts "<HEAD>"
fileHtml.puts "</HEAD>"
fileHtml.puts "<BODY>"
fileHtml.puts "<DIV class='content'>"

profiles = ["Coverage", "Patient", "EOB Outpatient Instituiontal", "EOB Inpatient Institutional", "EOB Pharmacy", "EOB Professional & Non-Clinician"]

xlsx = Roo::Spreadsheet.open(ARGV[0])
xlsx.default_sheet = xlsx.sheets[1] #  NEED TO PARSE OTHER SHEETS, Not sheet Data Element Index

#binding.pry
names = xlsx.column(3)[1..].uniq
fileHtml.puts "<table style=\"width: 945px;\" border=\"black\">\n<tbody>\n"
fileHtml.puts "<tr>"
fileHtml.puts "<td style=\"width: 98px; text-align: center;\"><strong>MapID</strong></td>"
fileHtml.puts "<td style=\"width: 247px; text-align: center;\"><strong>Name</strong></td>"
# fileHtml.puts "<td style=\"width: 70px; text-align: center;\"><strong>Blue Button</strong></td>"
fileHtml.puts "<td style=\"width: 540px; text-align: center;\"><strong>Description</strong></td>"
fileHtml.puts "</tr>"

names.each do |name|
    ids = []
    xlsx.each do |row|
    # binding.pry 
       #  puts "***** row[2] = #{row[2]} name = #{name}"
       next  if row[2] != name || ids.include?(row[0])
       ids << row[0] 
       fileHtml.puts "<tr>"
          bblist = ""
       bblist = row[1].split(' ').join(", ") if row[1]
       mapid = row[0]
       description = row[3]
       fileHtml.puts "<td>#{mapid}</td>"
       fileHtml.puts "<td>#{name}</td>"
 #      fileHtml.puts "<td>#{bblist}</td>"
       fileHtml.puts "<td>#{description}</td>"
       fileHtml.puts "</tr>"
      end
    end
    fileHtml.puts "</table>"
    fileHtml.puts "</DIV>"
fileHtml.puts "</BODY></HTML>"