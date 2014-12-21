class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.integer :document_id
      t.integer :user_id
      t.timestamps null: false
    end

    add_index :authors, [:document_id, :user_id], unique: true
  end
end
