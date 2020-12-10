class Basketball < ApplicationRecord
  has_many :discussions, dependent: :destroy
  validates_presence_of :name, :team, :facts
  belongs_to :user
end
