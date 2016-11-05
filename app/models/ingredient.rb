class Ingredient < ApplicationRecord
  has_many :recipes
  # has_many :cookbooks, through: :recipes
end
