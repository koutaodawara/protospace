class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :image1
      t.text :image2
      t.text :image3
      t.string :catch_copy
      t.string :concept

      t.timestamps 
    end
  end
end
