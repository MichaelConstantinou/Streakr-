class Streak < ApplicationRecord
  belongs_to :user
  has_many  :chains
end