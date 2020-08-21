require 'pry'
require 'json'
require 'roo'

require 'roo'

def isAComment(str)
    ("A".."Z").include?(str[0]) || str.match(/\s/)
  end
  
  def isAReference(str)
      str.include?("Reference")
  end

profiles = ["Coverage", "Patient", "EOB Outpatient Instituiontal", "EOB Inpatient Institutional", "EOB Pharmacy", "EOB Professional & Non-Clinician"]

xlsx = Roo::Spreadsheet.open(ARGV[0])
xlsx.default_sheet = xlsx.sheets[1] #  NEED TO PARSE OTHER SHEETS, Not sheet Data Element Index
profilecontent = {}
profiles.each do |profile|
    profilecontent[profile] = []
end
xlsx.each do |row|
    next  if !profilecontent[row[4]]
    profilecontent[row[4]].append({
        :mapid=>row[0], :CMSBB20 => row[1], :name=>row[2], :description=>row[3], :profile => row[4], :resource=>row[6], 
        :l1element=>row[7], :l2element => row[8], :l3element =>row[9], :refslice => row[10]
    })
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
        l3 = ""
        if element[:l3element]
        # If L3 starts with a Capital Letter or contains a space, it is a comment
            l3 = "." + element[:l3element] if !isAComment(element[:l3element])
        end
        slicename = ""
        reference = ""
        if element[:refslice]
            slicename = "[" + element[:refslice] + "]" if !isAReference(element[:refslice])
            # reference = " " + element[:refslice]  if isAReference(element[:refslice])
        end
        name = l1 + slicename + l2 + l3   # + reference 
        cmsbb20 = ""
        if element[:CMSBB20]
          cmsbb20 = "," + element[:CMSBB20].split(" ").join(",")
        end

        puts "* #{name} ^short = \"#{element[:description]}\"" # \(#{element[:mapid].to_s}#{cmsbb20}\)\"
        puts "* #{name} MS"   if slicename.length == 0
    end
    # puts ">>>>>> MS"
    # profilecontent[profile].each do |element|
    #     # First output all of the short descriptions
    #     l1 = ""
    #     if element[:l1element]
    #         element[:l1element].slice!("-->")
    #         l1 = element[:l1element]
    #     end
    #     l2 = ""
    #     if element[:l2element]
    #         element[:l2element].slice!("-->")
    #         l2 = "." + element[:l2element]
    #     end
    #     name = l1 + l2
    #     puts "* #{name} MS"
    # end

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

