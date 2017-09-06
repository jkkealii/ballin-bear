class Animal < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :name, presence: true, length: { minimum: 2 }
end
