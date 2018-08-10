class AddAnswerRefToResult < ActiveRecord::Migration[5.2]
  def change
    add_reference :results, :answer, foreign_key: true
  end
end
