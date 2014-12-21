class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :name
      t.string :url, limit: 2083
      t.timestamps null: false
    end
  end
end
