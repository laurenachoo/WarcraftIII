require_relative 'spec_helper'


describe SeigeEngine do

  before :each do
    @seigeengine = SeigeEngine.new(400, 50)
  end

  it "starts off with HP 400" do
    expect(@seigeengine.health_points).to eq(400)
  end

it "starts off with AP 50" do
    expect(@seigeengine.attack_power).to eq(50)
  end


  before :each do
    @barracks = Barracks.new
  end
describe "#produce_seige" do

    it "costs 200 gold" do
      @barracks.produce_seige
      expect(@barracks.gold).to eq(800) # starts at 1000
    end

    it "costs 3 food" do
      @barracks.produce_seige
      expect(@barracks.food).to eq(77) # starts at 80
    end

    it "produces a seige engine" do
      seigeengine = @barracks.produce_seige
      expect(seigeengine).to be_an_instance_of(SeigeEngine)
    end

    describe "#can_produce_seige?" do
    it "returns true if there are enough resources to produce a seige" do
      expect(@barracks.can_produce_seige?).to be_truthy
    end
   end 
  end



  # describe "#damage" do
  #   it "should reduce the SeigeEngine's health_points by the attack_power specified" do
  #     @seigeengine.damage(12)
  #     expect(@seigeengine.health_points).to eq(88) # HP started at 100 but just got hit by 12 (see subject)
  #   end
  # end

  # describe "#attack!" do
  #   it "should deal the appropriate (attack power based) damage to the enemy seigeengine" do
  #     enemy_seigeengine = SeigeEngine.new(40, 5)
  #     enemy_seigeengine.should_receive(:damage).with(3)
  #     @seigeengine.attack!(enemy_seigeengine)
  #   end
  # end

end