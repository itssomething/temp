class AddQuestionBankRefToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :question_bank, foreign_key: true
  end
end
