class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.references :user, index: true
      t.references :author, index: true
      t.string :title
      t.text :markup
      t.text :html
      t.references :license, index: true

      t.timestamps
    end
  end
end
