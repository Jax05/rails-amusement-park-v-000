class User < ActiveRecord::Base
  validates :name, :happiness, :nausea, :height, :tickets, presence: true
  has_secure_password

  def mood
    self.nausea > self.happiness ? "sad" : "happy"
  end
end
