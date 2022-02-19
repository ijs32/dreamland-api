class CreateOpportunityCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :opportunity_candidates do |t|
      t.integer :opportunity_id
      t.integer :candidate_id

      t.timestamps
    end
  end
end
