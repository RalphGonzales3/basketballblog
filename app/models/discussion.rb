class Discussion < ApplicationRecord
  belongs_to :basketball
  validates_presence_of :body
end
