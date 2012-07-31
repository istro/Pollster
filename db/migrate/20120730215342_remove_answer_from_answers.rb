class RemoveAnswerFromAnswers < ActiveRecord::Migration
  def up
    remove_column :answers, :answer
  end

  def down
    add_column :answers, :answer, :string
  end
end
