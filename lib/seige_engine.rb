class SeigeEngine
  attr_reader :health_points, :attack_power

  def initialize (hp, ap)
    @health_points = 400
    @attack_power = 50
  end
  
  # def can_attack?
  #     @health_points >= 1 
  # end  

  # def dead?
  #   if @health_points == 0 then true
  #  end   
  # end

  # def attack!(enemy)
  #   if can_attack? then
  #     enemy.damage(@attack_power)
  #   end  
  # end

  # def damage(dmg)
  #   @health_points -= dmg
  # end  



end  