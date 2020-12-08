class Discussion < ApplicationRecord
  belongs_to :basketball
  validates :body, presence: true
end
