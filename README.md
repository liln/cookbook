# Cookbook Application

By [Lillian Ng](http://github.com/orangeninjamidget)

This application uses Rails 4.

## Description
This cookbook application lets you add and explore recipes. It is an example of a has_many :through relationship using nested forms. New recipes include fields to enter measurements and ingredients. Ingredients do not recplicate if they are already in the database.

## Models

```ruby
class Recipe < ActiveRecord::Base
  has_many :measurements
  has_many :ingredients, :through => :measurements
end

class Measurement < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient
end

class Ingredient < ActiveRecord::Base
  has_many :measurements
  has_many :recipes, :through => :measurement
end
```

## Known Issues and Bugs

Tests have not been written :(

Nested forms have awkward behavior - sometimes the add link does not add fields to enter more ingredients

Different spelling/capitalization/plural ingredients will be replicated.

Ingredients that are linked to recipes can be deleted. This should not actually happen...


## Particularly Helpful Posts

[http://www.gitmatt.com/posts/5](http://www.gitmatt.com/posts/5) - a starting point for has_many :through associations

[awesome_nested_fields](https://github.com/lailsonbm/awesome_nested_fields)

From stackoverflow.com
[Rails has_many :through Nested Form](http://stackoverflow.com/questions/13506735/rails-has-many-through-nested-form)

[accepts_nested_attributes_dor with find_or_xreate](http://stackoverflow.com/questions/3579924/accepts-nested-attributes-for-with-find-or-create)
