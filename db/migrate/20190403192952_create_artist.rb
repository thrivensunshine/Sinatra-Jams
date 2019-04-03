class CreateArtist < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :age
      t.string :bio
      
      t.timestamps
    end
  end
end
