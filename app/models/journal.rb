class Journal < ApplicationRecord
  belongs_to :user
  has_many :trades
  validates :name, presence: true
  validates :category, presence: true
end
