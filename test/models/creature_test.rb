require 'test_helper'

class CreatureTest < ActiveSupport::TestCase
test "should not save creature without a name" do

   creature = Creature.new

   assert_not creature.save, "Saved a maindish without a name"

end

test "birds name should not be longer than 80 characters" do

   creature = Creature.new

   creature.birds = "a" * 81

   assert_not creature.valid?, "bird name too long"

end

test "mammals name should not be longer than 80 characters" do

   creature = Creature.new

   creature.mammals = "a" * 81

   assert_not creature.valid?, "mammal name too long"

end

test "insects name should not be longer than 80 characters" do

   creature = Creature.new

   creature.insects = "a" * 81

   assert_not creature.valid?, "insect name too long"

end

test "others name should not be longer than 80 characters" do

   creature = Creature.new

   creature.others = "a" * 81

   assert_not creature.valid?, "other name too long"

end

end
