class CreaturesController < ApplicationController
 def index

      creatures_list = Creature.all

      @creatures = creatures_list

   end
end
