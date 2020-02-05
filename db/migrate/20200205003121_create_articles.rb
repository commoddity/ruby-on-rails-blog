class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |table|
      table.string :title
      table.text :text

      table.timestamps null: false
    end
  end
end
