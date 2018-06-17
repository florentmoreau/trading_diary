class User < ApplicationRecord

  has_many :journals
  has_many :trades, through: :journals
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
