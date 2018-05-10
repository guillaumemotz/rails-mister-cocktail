class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  # validates_associated :cocktail, :ingredient
  # validates_uniqueness_of :dose, :scope => [:ingredient, :cocktail]
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]
end
