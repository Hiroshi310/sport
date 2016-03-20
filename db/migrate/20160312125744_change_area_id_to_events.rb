class ChangeAreaIdToEvents < ActiveRecord::Migration
  #変更後の型
  def up
    change_column :Events, :area, :integer
  end

  #変更前の型
  def down
    change_column :Events, :area, :string
  end
end
