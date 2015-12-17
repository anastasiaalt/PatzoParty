class Category < ActiveRecord::Base
  belongs_to :article, class_name: "Article"
  has_many :labels, foreign_key: "article_id"
end