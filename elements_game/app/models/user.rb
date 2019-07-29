class User < ApplicationRecord
  has_secure_password
  has_many :scores

  def login
    {
      username: self.username, first_name: self.first_name, last_name: self.last_name, scores: self.scores
    }
  end
end
