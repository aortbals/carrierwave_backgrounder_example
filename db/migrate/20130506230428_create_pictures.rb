class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.text :description
      t.string :image
      t.boolean :image_processing
      t.string :image_tmp

      t.timestamps
    end
  end
end
