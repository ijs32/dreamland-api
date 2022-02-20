class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.integer :candidate_id
      t.string :school
      t.string :degree
      t.string :field
      t.integer :start_year
      t.integer :end_year

      t.timestamps
    end
  end
end
