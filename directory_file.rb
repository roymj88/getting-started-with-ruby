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

#Method 2
if !File.directory?("Test")
    Dir.mkdir("Test"); # Create Directory
end
Dir.chdir("Test")
list = Dir.glob("*\.log")
list.each do |data|  
    File.open("data.log", "a") { 
        remote_data = open(data).read;
        "HELLO WORLD HOW ARE YOU".gsub(/\w+/) do |word|
            puts remote_data = word.capitalize;
        end
    }       
end