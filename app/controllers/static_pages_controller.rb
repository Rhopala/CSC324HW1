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

end
