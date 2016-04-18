class RemoveImage1FromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image1, :text
  end
end
