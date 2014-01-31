class Recipe < ActiveRecord::Base
  has_many :measurements
  has_many :ingredients, :through => :measurements
  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :measurements
end
