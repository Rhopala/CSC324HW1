class StaticPagesController < ApplicationController
  def home
      
      if logged_in?
        @micropost = current_user.microposts.build
        @feed_items = current_user.feed.paginate(page: params[:page])
      end      
    
      creatures_list = Creature.all

      cNum = (0..creatures_list.length-1).to_a.shuffle.first

      @creatures = creatures_list[cNum]

  end
  
  def help
  end

  def contact
  end

  def american_robin
  end

  def barred_owl
  end

  def bumblebee
  end

  def cicada
  end

  def common_grakle
  end

  def eagle
  end

  def firefly
  end

  def grasshopper
  end

  def house_sparrow
  end

  def northern_cardinal
  end

  def rabbit
  end

  def squirrel
  end

end
