
 class Dice_roll
  def initialize

  end
  def roll(dice=1)
      dice.times do
          rolled = rand(6) + 1
          puts "You rolled a #{rolled}"
      end
  end
end 