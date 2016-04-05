class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users,:members,:string
    add_column :users,:profile,:text
    add_column :users,:works,:string
  end
end
