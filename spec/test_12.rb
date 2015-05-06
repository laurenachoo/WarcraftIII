require_relative 'spec_helper'

describe Unit do

 
  before :each do
      @unit = Unit.new(30, 5)
  end
   

  describe "#can_attack?" do



    it "will attack, if it's health points >= 1" do
        @unit.damage(29)
        expect(@unit.can_attack?).to be_truthy
    end
    it "will not recieve damage, if already dead" do 
        @unit.damage(30)
        expect(@unit.can_attack?).to be_falsey

    end  
  end

end
