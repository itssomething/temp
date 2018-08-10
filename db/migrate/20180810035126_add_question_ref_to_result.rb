class AddQuestionRefToResult < ActiveRecord::Migration[5.2]
  def change
    add_reference :results, :question, foreign_key: true
  end
end
