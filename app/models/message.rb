class Message < ActiveRecord::Base
  attr_accessible :body, :email, :name, :phone

  validates :body, :email, :name, presence: true
end
