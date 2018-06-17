class Trade < ApplicationRecord
  belongs_to :journal, optional: true
  belongs_to :user
  validates :trading_value, presence: true
 # validates :user, uniqueness: { scope: :journal }
end
