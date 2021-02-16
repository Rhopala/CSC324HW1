class StaticPagesController < ApplicationController
  def home
      
      creatures_list = Creature.all

      cNum = (0..creatures_list.length-1).to_a.shuffle.first

      @creatures = creatures_list[cNum]

  end
  
  def roll
    @result = (1..6).to_a.shuffle.first
  end

  def help
  end
end
