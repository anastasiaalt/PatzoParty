class Article < ActiveRecord::Base
  belongs_to :author, class_name: "Author"
  has_and_belongs_to_many :editors, class_name: "Editor"
  belongs_to :category, class_name: "Category"
end