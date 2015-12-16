require_relative "config"

author = Author.create({name1: "Anastasia", name2: "Alt", location: "Williamsburg", img_url: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/4/005/0a2/31b/125f0b0.jpg"})
author = Author.create({name1: "Amaury", name2: "Meunier", location: "Bushwick", img_url: "https://pbs.twimg.com/profile_images/568426201107013632/spXIQ3ye.jpeg"})
author = Author.create({name1: "Zev", name2: "Rector", location: "Greenpoint", img_url: "http://thewildmagazine.com/wp-content/uploads/2014/09/Zev-Rector_Portrait-by-Andres-Altamirano.jpg"})

# An alternative way is to create a new record via ActiveRecord and asking the model for it's id.
# create an individual Author and assign it to a variable "author"
# create an individual Article and set it's author_id to whatever the id is of the author model above.

article = Article.create({title: "Fur, Feather, Lace, Leather", img_url: "http://www.whatgoesaroundnyc.com/blog/wp-content/uploads/2013/06/guy-bourdin-02.jpg", content: "The best party ever", author_id: author.id, created_at: DateTime.new(2015,12,31,1,11)})
article = Article.create({title: "All That Glitters", img_url: "https://s-media-cache-ak0.pinimg.com/736x/4b/4a/f4/4b4af45ef8b5a1f0f534c972834e6391.jpg", content: "A glittery good time", author_id: author.id, created_at: DateTime.new(2015,12,31,2,22)})
article = Article.create({title: "House of Mirrors", img_url: "https://blog.weetas.com/wp-content/uploads/2014/12/a_room_full_of_mirrors_and_reflections__3d_backgrounds_for_pcs__desktops_and_computers-1280x800-1038x576.jpg", content: "Reflections everywhere", author_id: author.id, created_at: DateTime.new(2015,12,31,3,33)})



category = Category.create({label: "New Year's Eve", article_id: article.id})
category = Category.create({label: "Summer", article_id: article.id})
category = Category.create({label: "Art Party", article_id: article.id})



editors = [
  {name1: "Nash", name2: "Petrovic", location: "Fort_Greene", img_url: "https://media.licdn.com/mpr/mpr/shrink_100_100/p/6/005/009/1f4/3592c4c.jpg"}
  {name1: "Gabriel", name2: "Levy", location: "Soho", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Aslaug_Magnusdottir_July_2012.jpg/220px-Aslaug_Magnusdottir_July_2012.jpg"}
  {name1: "Chiyoko", name2: "Osborne", location: "Union_Square", img_url: "http://www.ivankatrump.com/wp-content/uploads/2015/03/Chiyoko-Osborne.jpg"}
]
Editor.create(editors)

