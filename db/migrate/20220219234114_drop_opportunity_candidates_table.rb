class DropOpportunityCandidatesTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :opportunity_candidates
  end
end
