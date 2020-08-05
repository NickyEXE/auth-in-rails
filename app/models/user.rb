class User < ApplicationRecord
  has_many :likes
  has_many :posts, through: :likes
  has_secure_password



  # def password=(plaintext_password)
    # do some stuff to convert the password into a password_digest that's encrypted
  # end


  # authenticate(password)
    # Hey, does this password maatch up with this user's encrypted password in the database
  # end

  # password_confirmation=(plaintext_password)
    # does the password you just gave me match up with the other password you just gave me
  # end


end
