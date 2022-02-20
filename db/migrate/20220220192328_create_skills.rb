class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.integer :candidate_id
      t.string :skill_title

      t.timestamps
    end
  end
end
