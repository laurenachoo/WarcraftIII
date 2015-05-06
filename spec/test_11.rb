require_relative 'spec_helper'

describe Unit do

 
  before :each do
      @unit = Unit.new(30, 5)
  end
   

  describe "#dead?" do



    it "will be dead if health points <= 0" do
        @unit.damage(30)
        expect(@unit.dead?).to eql true
    end
    it "will not be dead health more than 0" do 
        @unit.damage(29)
        expect(@unit.dead?).to be_falsey

    end  
  end

end
