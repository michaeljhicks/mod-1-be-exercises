require './lib/game'

 RSpec.describe Game do
    before(:each) do
        @pick_4 = Game.new("Pick 4", 2)
        @mega_millions = Game.new("Mega Millions", 5, true)
    end

    it 'exists' do
        expect(@pick_4).to be_a Game
    end

    it "has attributes" do
        expect(@pick_4.name).to eq("Pick 4")      
        expect(@pick_4.cost).to eq(2)
        expect(@mega_millions.national_drawing?).to eq true     
        expect(@pick_4.national_drawing?).to eq false     
    end
  
 end
