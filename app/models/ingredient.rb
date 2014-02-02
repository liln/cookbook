class Ingredient < ActiveRecord::Base
  has_many :measurements
  has_many :recipes, :through => :measurement

  validates :name, :presence => true
end
