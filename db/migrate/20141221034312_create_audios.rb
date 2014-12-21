class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :name
      t.string :url, limit: 2083
      t.integer :user_id
      t.timestamps null: false
    end

    add_index :audios, :user_id
  end
end
