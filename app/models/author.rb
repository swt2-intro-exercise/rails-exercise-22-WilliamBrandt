class Author < ApplicationRecord
  has_and_belongs_to_many :paper
  validates :last_name, presence: true,
            length: { minimum: 1 }
  def name
    name = first_name + " " + last_name
  end
end
