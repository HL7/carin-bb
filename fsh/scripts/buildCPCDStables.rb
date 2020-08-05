require 'pry'
require 'json'
require 'roo'

require 'roo'

profiles = ["Coverage", "Patient", "EOB Outpatient Facility", "EOB Inpatient Facility", "EOB Pharmacy", "EOB Professional | Non-Physician"]

xlsx = Roo::Spreadsheet.open(ARGV[0])
xlsx.default_sheet = xlsx.sheets[1]
profilecontent = {}
profiles.each do |profile|
    profilecontent[profile] = []
end
xlsx.each do |row|
    next  if !profilecontent[row[3]]
    profilecontent[row[3]].append({
        :mapid=>row[0], :name=>row[1], :description=>row[2], :resource=>row[5], 
        :l1element=>row[6], :l2element => row[7], :l3element =>row[8], 
        :reference=>row[9]})
 end

 profiles.each do |profile|
    puts ">>> #{profile}"
    puts ">>>>>> Short Descriptions"
    profilecontent[profile].each do |element|
        # First output all of the short descriptions
        l1 = ""
        if element[:l1element]
            element[:l1element].slice!("-->")
            l1 = element[:l1element]
        end
        l2 = ""
        if element[:l2element]
            element[:l2element].slice!("-->")
            l2 = "." + element[:l2element]
        end
        name = l1 + l2
        puts "* #{name} ^short = \"#{element[:description]} \(#{element[:mapid].to_s} \)\""
    end
    puts ">>>>>> MS"
    profilecontent[profile].each do |element|
        # First output all of the short descriptions
        l1 = ""
        if element[:l1element]
            element[:l1element].slice!("-->")
            l1 = element[:l1element]
        end
        l2 = ""
        if element[:l2element]
            element[:l2element].slice!("-->")
            l2 = "." + element[:l2element]
        end
        name = l1 + l2
        puts "* #{name} MS"
    end

     # Second output a table
    #  profilecontent[profile].each do |element|
    #     puts "<tr>"
    #     puts "<td>"
    #     puts element[:mapid]
    #     puts "</td>"
    #     puts "<td>"
    #     puts element[:name]
    #     puts "</td>"
    #     puts "<td>"
    #     puts element[:description]
    #     puts "</td>"
    #     puts "<td>"
    #     puts element[:l1element]
    #     puts "</td>"
    #     puts "<td>"
    #     puts element[:l2element]
    #     puts "</td>"
    #     puts "<td>"
    #     puts element[:l3element]
    #     puts "</td>"
    #     puts "<td>"
    #     puts element[:reference]
    #     puts "</td>"
    #     puts "</tr>"
    # end
end

