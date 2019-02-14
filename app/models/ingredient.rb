class Ingredient < ApplicationRecord
  has_many :doses
# You can't delete an ingredient if it used by at least one cocktail.

  validates :name, uniqueness: true, presence: true
end
