class RemoveImage2FromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image2, :text
  end
end
