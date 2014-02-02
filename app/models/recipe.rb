class Recipe < ActiveRecord::Base
  has_many :measurements
  has_many :ingredients, -> {uniq}, :through => :measurements
  accepts_nested_attributes_for :ingredients  #### try removing this
  accepts_nested_attributes_for :measurements
end
