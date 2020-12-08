class Basketball < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :team, :facts, presence: true
end
