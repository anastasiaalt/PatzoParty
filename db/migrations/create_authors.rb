require_relative "../config"

class CreateAuthors < ActiveRecord::Migration
  def up
    puts "Apply this"
    create_table :authors do |t|
      t.string(:password_digest)
      t.string(:name1)
      t.string(:name2)
      t.string(:location)
      t.string(:img_url)
    end
  end

  def down
    puts "undo!"
    drop_table :authors
  end
end

CreateAuthors.migrate(ARGV[0])

