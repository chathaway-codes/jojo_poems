class CreatePoemComments < ActiveRecord::Migration
  def change
    create_table :poem_comments do |t|
      t.references :poem, index: true
      t.references :user
      t.integer :start
      t.integer :end
      t.text :markup
      t.text :html

      t.timestamps
    end
  end
end
