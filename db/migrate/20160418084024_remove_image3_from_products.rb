class RemoveImage3FromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image3, :text
  end
end
