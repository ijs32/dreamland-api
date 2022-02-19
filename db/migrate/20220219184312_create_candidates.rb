class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
