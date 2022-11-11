class Paper < ApplicationRecord
  validates :title, :venue, presence: true,
            length: { minimum: 1 }
  validates_numericality_of(:year)
end