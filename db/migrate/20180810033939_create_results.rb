class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :current_result_status

      t.timestamps
    end
  end
end
