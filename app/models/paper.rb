class Paper < ApplicationRecord
  has_and_belongs_to_many :authors
  validates :title, :venue, presence: true,
            length: { minimum: 1 }
  validates_numericality_of(:year)
  def self.created_in(filter_year)
    where("year = ?", filter_year) if filter_year.present?
  end
end