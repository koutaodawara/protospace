class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :image
      t.integer :product_id
      t.integer :status, main:0,null:false,limit:2
      t.timestamps
    end
  end
end
