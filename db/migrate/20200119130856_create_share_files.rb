class CreateShareFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :share_files do |t|

      t.timestamps
    end
  end
end
