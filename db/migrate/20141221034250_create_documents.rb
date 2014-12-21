class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.text :content
      t.integer :audio_id
      t.timestamps null: false
    end

    add_index :documents, :name
    add_index :documents, :audio_id
  end
end
