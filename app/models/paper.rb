class Paper < ApplicationRecord
  has_and_belongs_to_many :author
  validates :title, :venue, presence: true,
            length: { minimum: 1 }
  validates_numericality_of(:year)
end