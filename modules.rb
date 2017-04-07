require 'pry'

module Car
  class AWD
    def start
      puts "Engine on!"
    end

    def drive
      puts "All wheels go!"
    end
  end

  class RWD
    def start
      puts "Engine on!"
    end

    def drive
      puts "Rear wheels go!"
    end
  end
end

binding.pry
''