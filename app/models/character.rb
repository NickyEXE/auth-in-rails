class Character < ApplicationRecord
  has_many :fan_faves
  has_many :users, through: :fan_faves
end
