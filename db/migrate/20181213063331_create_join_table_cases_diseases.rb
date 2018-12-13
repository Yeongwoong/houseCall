class CreateJoinTableCasesDiseases < ActiveRecord::Migration[5.2]
  def change
    create_join_table :cases, :diseases do |t|
      # t.index [:case_id, :disease_id]
      # t.index [:disease_id, :case_id]
    end
  end
end
