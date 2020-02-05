class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |table|
      table.string :commenter
      table.text :body
      table.references :article, index: true, foreign_key: true

      table.timestamps null: false
    end
  end
end
