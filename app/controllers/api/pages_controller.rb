class Api::PagesController < ApplicationController

  def random_fortune_action
    which_fortune = rand(0...3)
    fortunes = ["A friend asks only for your time, not your money.", "If you refuse to accept anything but the best, you very often get it.", "A smile is your passport into the hearts of others."]
    @fortune = fortunes[which_fortune]
    
    render "fortune_view.json.jbuilder"  
  end

  def lotto_numbers_action
    lotto_numbers = []
    6.times do
      lotto_numbers << rand(1...61)
    end
    @lotto_numbers = lotto_numbers

    render "lotto_view.json.jbuilder"
  end
end
