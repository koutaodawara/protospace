class AddImage2ToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image2, :string
  end
end
