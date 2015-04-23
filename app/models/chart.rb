class Chart < ActiveRecord::Base
  belongs_to :system
  belongs_to :turn
end
