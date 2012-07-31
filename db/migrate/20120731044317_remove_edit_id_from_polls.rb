class RemoveEditIdFromPolls < ActiveRecord::Migration
  def up
    remove_column :polls, :edit_id
  end

  def down
    add_column :polls, :edit_id, :string
  end
end
