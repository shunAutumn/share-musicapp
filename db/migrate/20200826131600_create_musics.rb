class CreateMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :musics do |t|
      t.string :title
      t.string :artist
      t.text :image
      t.timestamps
    end
  end
end
