class AddCategoryRefToQuestionBank < ActiveRecord::Migration[5.2]
  def change
    add_reference :question_banks, :category, foreign_key: true
  end
end
