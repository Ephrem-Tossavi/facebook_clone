class Blog < ApplicationRecord
  belongs_to :user

  #validations
  validates :title, presence: true
end
