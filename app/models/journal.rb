class Journal < ApplicationRecord
  belongs_to :user
  has_many :trades, dependent: :delete_all
  validates :name, presence: true
  validates :category, presence: true
end
