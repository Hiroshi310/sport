class AddTypeToCreateEntries < ActiveRecord::Migration
  def change
    add_column :entries, :type, :string
  end
end
