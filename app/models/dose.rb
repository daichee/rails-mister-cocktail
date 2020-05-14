class Dose < ApplicationRecord
  belongs_to :cocktail, optional: true
  belongs_to :ingredient

  validates :cocktail_id, :ingredient_id, :description, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end
