class AddUsersToShareFile < ActiveRecord::Migration[6.0]
  def change
    add_reference :share_files, :user, foreign_key: true
  end
end
