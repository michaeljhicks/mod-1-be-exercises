class Contestant
  attr_reader :first_name, 
                :last_name, 
                :age, 
                :state_of_residence, 
                :spending_money,
                :full_name,
                :game_interests

  def initialize(info, out_of_state = false)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @age = info[:age]
    @state_of_residence = info[:state_of_residence]
    @spending_money = info[:spending_money]
    @full_name = info[:first_name] + " " + info[:last_name]
    @out_of_state = out_of_state
    @game_interests = []
  end

  def out_of_state?
    @out_of_state
  end

  def add_game_interest(game)
    @game_interests.push(game)
  end 
  
end
