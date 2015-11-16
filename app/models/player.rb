class Player < ActiveRecord::Base

  has_many :messages
  has_many :games, through: :messages

end
