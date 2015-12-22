require_relative "../config"

class CreateArticles < ActiveRecord::Migration
  def up
    puts "Apply this"
    create_table :articles do |t|
      t.string(:title)
      t.string(:img_url)
      t.string(:content)
      t.string(:created_at)
      t.string(:updated_at)
      t.integer(:author_id)
      t.integer(:category_id)
    end
  end

  def down
    puts "undo!"
    drop_table :articles
  end
end

CreateArticles.migrate(ARGV[0])

