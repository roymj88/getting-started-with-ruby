class Car
    attr_accessor :number, :type
    # attr_reader :number, :type
    # attr_writer :number, :type
    @@height = 10
    def initialize
        @number = "KL - 39 - A -203"
        @type = "Mitsubishi Lancer"         
    end
 
    def test
        @@height = 12
    end
 
 
    def setDetails(*args)
        @number = args[0]
        @type = args[1]
        puts @number + " - " + @type
        puts @@height
    end
end
 
car = Car.new
# puts car.number;
car.test
car.setDetails("KL - 39 - A - 203", "Mitsubishi Lancer")
# puts car.number = "KL - 16 - D - 9802";