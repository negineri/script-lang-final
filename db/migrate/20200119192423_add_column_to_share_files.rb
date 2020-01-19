class AddColumnToShareFiles < ActiveRecord::Migration[6.0]
  def change
    add_column :share_files, :title, :string, null: false, default: ""
  end
end
