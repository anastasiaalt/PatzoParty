require "bcrypt"

class Author < ActiveRecord::Base
  has_many(:articles)
end
