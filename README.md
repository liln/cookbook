# Cookbook Application

By [Lillian Ng](http://github.com/orangeninjamidget)

## Description
This cookbook application lets you add and explore recipes. It uses Rails 4.

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

## Particularly Helpful Posts
[http://www.gitmatt.com/posts/5](http://www.gitmatt.com/posts/5) - a starting point for has_many :through associations
[awesome_nested_fields](https://github.com/lailsonbm/awesome_nested_fields)
From stackoverflow.com
[Rails Has Many Through Nested Form](http://stackoverflow.com/questions/13506735/rails-has-many-through-nested-form)
[accepts_nested_attributes_dor with find_or_xreate](http://stackoverflow.com/questions/3579924/accepts-nested-attributes-for-with-find-or-create)

## Known Issues
Different spelling/capitalization/plural ingredients will be replicated.
