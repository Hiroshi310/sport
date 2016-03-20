class AddCreateEventsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :area_name, :string
  end
end
