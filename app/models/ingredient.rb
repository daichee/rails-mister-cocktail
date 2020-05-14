class Ingredient < ApplicationRecord
  has_many :doses
  belongs_to :cocktail, optional: true

  validates :name, presence: true, uniqueness: true
end
