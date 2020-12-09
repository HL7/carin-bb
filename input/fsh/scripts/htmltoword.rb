require 'htmltoword'

my_html = File.read(ARGV[0])
document = Htmltoword::Document.create(my_html)
file = Htmltoword::Document.create_and_save(my_html, "output.docx")