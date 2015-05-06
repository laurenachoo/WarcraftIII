#require_relative "peasant"
require_relative 'footman'
require_relative 'seige_engine'


  class Barracks 

    attr_reader :gold, :food, :health_points, :lumber

    def initialize
      @gold = 1000
      @food = 80
      @health_points = 500
      @lumber = 500
    end



    def attack!(enemy)
        enemy.damage(@attack_power)
    end

    def damage(dmg)
      @health_points -= dmg
    end  


    def produce_seige
      if can_produce_seige? 
        @gold -= 200
        @food -= 3
        return SeigeEngine.new(400, 50)
      end
    end
        
    def can_produce_seige?
      food >= 3 && gold >= 200
    end


    def train_footman
      if can_train_footman? 
        @gold -= 135
        @food -= 2
        return Footman.new
      end
    end
      
    def can_train_footman?
      food >= 2 && gold >= 135
    end

    def train_peasant
      if can_train_peasant? 
        @gold -= 90
        @food -= 5
        return Peasant.new
      end
    end
      
    def can_train_peasant?
      food >= 5 && gold >= 90
    end
  
end
