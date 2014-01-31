require "test_helper"

feature "Add Recipe" do
  scenario "add a recipe to the cookbook" do
    visit root_path
    click_on "New Recipe"

    fill_in "Name", with: "Chocolate chip cookies"
    fill_in "Type", with: "dessert"
    fill_in "Ingredients", with:  "
    2 1/4 cups all-purpose flour\n
    1 teaspoon baking soda\n
    1 teaspoon salt\n
    1 cup butter, softened\n
    3/4 cup granulated sugar\n
    3/4 cup packed brown sugar\n
    1 teaspoon vanilla extract\n
    2 large eggs\n
    2 cups Semi-Sweet Chocolate Chips\n
    1 cup chopped nuts"
    fill_in "Directions", with: "PREHEAT oven to 375° F.\n
COMBINE flour, baking soda and salt in small bowl. Beat butter, granulated sugar, brown sugar and vanilla extract in large mixer bowl until creamy. Add eggs, one at a time, beating well after each addition. Gradually beat in flour mixture. Stir in morsels and nuts. Drop by rounded tablespoon onto ungreased baking sheets.\n
BAKE for 9 to 11 minutes or until golden brown. Cool on baking sheets for 2 minutes; remove to wire racks to cool completely."
    click_on "Create Recipe"

    page.text.must_have_content "Recipe was successfully created"
  end
end
