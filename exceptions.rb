def exception
    begin
        puts "a"
        raise
    rescue 
        puts "rescue"
    end
end
 
exception