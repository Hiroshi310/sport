class ChangeNumberofpeopleToEvents < ActiveRecord::Migration
  #変更後の型
  def up
    change_column :Events, :numberofpeople, :integer
  end

  #変更前の型
  def down
    change_column :Events, :numberofpeople, :string
  end
end
