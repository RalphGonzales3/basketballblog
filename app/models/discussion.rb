class Discussion < ApplicationRecord
  validates_presence_of :body
  belongs_to :basketball
end
