class Recipe
    attr_accessor :title, :description, :ingredients, :cook_time, :featured
    def initialize(title:, description:, ingredients:, cook_time:, featured:)
        @title = title
        @description = description
        @ingredients = ingredients
        @cook_time = cook_time
        @featured = featured
    end

    def self.from_json(path_file)
        recipe = File.read(path_file)
        recipe = JSON.parse(recipe)
        Recipe.new(
            title: recipe['title'],
            description: recipe['description'],
            ingredients: recipe['ingredients'],
            cook_time: recipe['cook_time'],
            featured: recipe['featured']
        )
    end
end