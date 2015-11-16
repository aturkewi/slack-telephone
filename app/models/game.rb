class Game < ActiveRecord::Base

  has_many :messages
  has_many :players, through: :messages

end
