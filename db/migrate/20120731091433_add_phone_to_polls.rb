class AddPhoneToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :phone, :string
  end
end
