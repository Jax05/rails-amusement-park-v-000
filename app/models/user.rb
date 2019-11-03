class User < ActiveRecord::Base
  validates :name, presence: true
  has_secure_password

  def mood
    if self.has_attributes?
      self.nausea > self.happiness ? "sad" : "happy"
    else
      "unavailable"
    end
  end

  def has_attributes?
    self.nausea && self.happiness
  end
end
