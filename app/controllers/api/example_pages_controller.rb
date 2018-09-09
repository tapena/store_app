class Api::ExamplePagesController < ApplicationController
  def fortune
    fortunes = [
                "You will live a long and rich life", 
                "You will find love in the most unusually places.", 
                  "You will die."
                ]
    @your_fortune = fortunes.sample            
    render "fortune_view.json.jbuilder"
  end  

  def lotto
    possible_numbers = (1..60).to_a
    picked_numbers = possible_numbers.sample(6)

    @final_numbers = "Your lucky numbers for today are: #{picked_numbers.join(", ")}"

    render 'lotto_view.json.jbuilder'
  end  


  def counter
    @page_count = 0
    @page_count = @page_count + 1
    render "counter_view.json.jbuilder"
  end 
end 