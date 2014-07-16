#Create Directory if not exist and update/add a log file with contents of all other files
require 'active_support/core_ext/integer/inflections'
if !File.directory?("test")
    Dir.mkdir("test")
end
 
Dir.glob('test/*.log') do |log_file|
    contents = File.read(log_file)
    contents = contents.gsub(/[0123456789]/, 'z')
    File.open('test.log', 'a') { |file| 
        File.open(log_file, 'r') {
            file.write(contents + "\n") 
            t = File.ctime(log_file)
            file.write("Date of creation of the file : #{t.strftime('%A, %B')}, #{t.day.ordinalize}, #{t.year}  \n")
        }
    }
end