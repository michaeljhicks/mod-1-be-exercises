require "./lib/contestant"
require "./lib/game"
require "./lib/colorado_lottery"

 RSpec.describe ColoradoLottery do
    before(:each) do
        @lottery = ColoradoLottery.new
    end

    it 'exists' do
        expect(@lottery).to be_a ColoradoLottery
    end

    it "has registered contestants" do
        expect(@lottery.registered_contestants).to eq({})      
    end

    it "has registeted winners" do
        expect(@lottery.winners).to eq([])      
    end

    it "has current_contestants" do
        expect(@lottery.current_contestants).to eq({})      
    end


 end
