class StaticPagesController < ApplicationController
  def home
  end
  
  def roll
    @result = (1..6).to_a.shuffle.first
  end

  def help
  end
end
