# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

array = ["Light rum","Applejack","Gin","Dark rum","Sweet Vermouth","Strawberry schnapps","Scotch","Apricot brandy","Triple sec","Southern Comfort","Orange bitters","Brandy","Lemon vodka","Blended whiskey","Dry Vermouth","Amaretto","Tea","Champagne","Coffee liqueur","Bourbon","Tequila","Vodka","A\u00f1ejo rum","Bitters","Sugar","Kahlua","demerara Sugar","Dubonnet Rouge","Lime juice","Irish whiskey","Apple brandy","Carbonated water","Cherry brandy","Creme de Cacao","Grenadine","Port","Coffee brandy","Red wine","Rum","Grapefruit juice","Ricard","Sherry","Cognac","Sloe gin","Apple juice","Pineapple juice","Lemon juice","Sugar syrup","Milk","Strawberries","Chocolate syrup","Yoghurt","Mango","Ginger","Lime","Cantaloupe","Berries","Grapes","Kiwi","Tomato juice","Cocoa powder","Chocolate","Heavy cream","Galliano","Peach Vodka","Ouzo","Coffee","Spiced rum","Water","Espresso","Angelica root","Orange","Cranberries","Johnnie Walker","Apple cider","Everclear","Cranberry juice","Egg yolk","Egg","Grape juice","Peach nectar","Lemon","Firewater","Lemonade","Lager","Whiskey","Absolut Citron","Pisco","Irish cream","Ale","Chocolate liqueur","Midori melon liqueur","Sambuca","Cider","Sprite","7-Up","Blackberry brandy","Peppermint schnapps","Creme de Cassis","Jack Daniels","Bailey's irish cream","151 proof rum","Absolut Vodka","Goldschlager","Crown Royal","Cointreau","Vermouth","Advocaat","Absolut Kurant","Beer","Kool-Aid","Cherry Heering","White Creme de Menthe","Malibu rum","Vanilla vodka","J\u00e4germeister","Kiwi liqueur","Grand Marnier","Cachaca","Peachtree schnapps","Wild Turkey","Cranberry vodka","Corona","Orange juice","Yukon Jack","Chocolate ice-cream","Coconut rum","Banana liqueur","Black Sambuca","Hot Damn","Mint","Campari","Ice","Sour mix","Absinthe","Whisky","Guinness stout","Vanilla ice-cream","Chambord raspberry liqueur","Jim Beam","Godiva liqueur","Fruit punch","Baileys irish cream","Zima","Blue Curacao","Coca-Cola","Maui","Frangelico","Bacardi Limon","Raspberry vodka","Green Creme de Menthe","Lemon peel","Prosecco","White Rum","Mezcal","Green Chartreuse","Hot Chocolate"]
array.each do |ingredient|
  Ingredient.create(name: ingredient)
end


20.times do |x|
  Cocktail.create(name: Faker::Coffee.blend_name)
end
