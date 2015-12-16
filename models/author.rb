require "bcrypt"

class Author < ActiveRecord::Base
  has_secure_password
  has_many :articles, class_name: "Article"
end
