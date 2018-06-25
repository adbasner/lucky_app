class Api::PagesController < ApplicationController

  def random_fortune_action
    # which_fortune = rand(0..2)
    fortunes = ["A friend asks only for your time, not your money.", "If you refuse to accept anything but the best, you very often get it.", "A smile is your passport into the hearts of others."]
    @fortune = fortunes.sample
    
    render "fortune_view.json.jbuilder"  
  end

  def lotto_numbers_action
    @lotto_numbers = []
    6.times do
      @lotto_numbers << rand(1..60)
    end

    render "lotto_view.json.jbuilder"
  end
end
