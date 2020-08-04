class User < ApplicationRecord
  has_secure_password
  has_many :fan_faves, class_name: "FanFave"
  has_many :characters, through: :fan_faves

end
