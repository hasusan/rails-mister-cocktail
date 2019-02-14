class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  # A dose must have a description, a cocktail and an ingredient,
  validates :description, :cocktail, :ingredient, presence: true
  # and [cocktail, ingredient] pairings should be unique.
  validates :cocktail, uniqueness: { scope: :ingredient }
end
