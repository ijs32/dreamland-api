class CreateRecruiters < ActiveRecord::Migration[7.0]
  def change
    create_table :recruiters do |t|
      t.integer :user_id
      t.string :company_name

      t.timestamps
    end
  end
end
