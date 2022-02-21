class AddColumnToSkills < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :skill_level, :string
  end
end
