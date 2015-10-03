class Vaccination < ActiveRecord::Base
  belongs_to :system

  def roll_off(cells)
    cells.each do |cell|
      cell.dice.roll && cell.virus.dice.roll
    end
  end

  def compare(cells)
    cells.each do |cell|
      cell.dice.roll > cell.virus.dice.roll ? cell.dice.win = true : cell.dice.win = false
    end
  end

  def result(cells)
    wins = cells.where(dice.win == true)
    losses = cells.where(dice.win == false)
    if wins > losses
      return "system"
    else return "viri"
    end
  end

end