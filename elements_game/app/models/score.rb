class Score < ApplicationRecord
  belongs_to :user

  def newScore
    {id: self.id, user_id: self.user_id, mode: self.mode, correct: self.correct, total: self.total}
  end
end
