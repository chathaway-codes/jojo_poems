class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.datetime :dob
      t.string :gender, limit: 1

      t.timestamps
    end
  end
end
