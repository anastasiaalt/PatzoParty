require_relative "../config"

class CreateCategories < ActiveRecord::Migration
  def up
    puts "Apply this"
    create_table :categories do |t|
      t.string(:label)
    end
  end

  def down
    puts "undo!"
    drop_table :categories
  end
end

CreateCategories.migrate(ARGV[0])

