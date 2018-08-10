class CreateWordLists < ActiveRecord::Migration[5.2]
  def change
    create_table :word_lists do |t|
      t.string :content
      t.integer :status

      t.timestamps
    end
  end
end
