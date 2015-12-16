class Category < ActiveRecord::Base
  belongs_to :article, class_name: "Article"
  has_many foreign_key: "visited_id"
end