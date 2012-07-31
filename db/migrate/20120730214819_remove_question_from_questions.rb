class RemoveQuestionFromQuestions < ActiveRecord::Migration
  def up
    remove_column :questions, :question
  end

  def down
    add_column :questions, :question, :string
  end
end
