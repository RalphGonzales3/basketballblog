class Basketball < ApplicationRecord
  has_many :discussions, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :team, :facts, presence: true
end
