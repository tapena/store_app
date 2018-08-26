class Api::ExamplePagesController < ApplicationController
  def fortune_action
    fourtunes = [
                "You will live a long and rich life", 
                "You will find love in the most unusually places.", 
                "You will die."
                ]
    @your_fortune = fortunes.sample            
    render "fourtune_view.json.jbuilder"
  end  

  def lotto_action
    possible_numbers = (1..60).to_a
    picked_numbers = possible_numbers.sample(6)

    6.times do 
      picked_numbers << possible_numbers.pop
    end

    @final_numbers = "Your lucky numbers for today are: #{picked_numbers.joint(", ")}"

    render 'lotto_view.json.jbuilder'
  end  
end
