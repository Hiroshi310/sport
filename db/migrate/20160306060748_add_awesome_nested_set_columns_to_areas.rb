class AddAwesomeNestedSetColumnsToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :parent_id, :integer
    add_column :areas, :lft, :integer
    add_column :areas, :rgt, :integer
    
    add_index :areas, :parent_id
    add_index :areas, :lft
    add_index :areas, :rgt
  end
end
