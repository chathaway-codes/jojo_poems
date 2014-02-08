class CreateUserAuthors < ActiveRecord::Migration
  def change
    create_table :user_authors do |t|
      t.references :user, index: true
      t.references :author, index: true

      t.timestamps
    end
  end
end
