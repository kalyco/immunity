class Vaccination < ActiveRecord::Base
  belongs_to :system

  def compare(c_dice, v_dice)
    c_dice.each do |c_die|
      v_dice.each do |v_die|
        if c_die.roll > v_die.roll  
          c_die.win = true
          v_die.win = false
        else
          v_die.win = true
          c_die.win = false
        end
        c_die.save && v_die.save
      end
    end
  end

  def result(c_dice, v_dice)
    wins = c_dice.where(win: true)
    losses = v_dice.where(win: true)
    if wins.count > losses.count
      return "system"
    else return "viri"
    end
  end

end