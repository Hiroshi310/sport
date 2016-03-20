class RenameAreaToEvents < ActiveRecord::Migration
  def up
    rename_column :Events, :area, :area_id
    #   呪文     :テーブル名, :旧カラム名, :新カラム名
  end

  def down
    rename_column :Events, :area_id, :area
    #   呪文     :テーブル名, :新カラム名, :旧カラム名
  end
end
