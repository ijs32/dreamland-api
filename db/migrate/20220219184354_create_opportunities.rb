class CreateOpportunities < ActiveRecord::Migration[7.0]
  def change
    create_table :opportunities do |t|
      t.integer :recruiter_id
      t.string :job_title
      t.string :job_description

      t.timestamps
    end
  end
end
