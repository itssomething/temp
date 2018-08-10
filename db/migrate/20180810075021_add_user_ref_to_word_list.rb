class AddUserRefToWordList < ActiveRecord::Migration[5.2]
  def change
    add_reference :word_lists, :user, foreign_key: true
  end
end
