class Message < ApplicationRecord
  validates :first_name, :email, :phone, :body, presence: true
end
