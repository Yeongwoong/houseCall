class CreateJoinTablePatientsDiseases < ActiveRecord::Migration[5.2]
  def change
    create_join_table :patients, :diseases do |t|
      # t.index [:patient_id, :disease_id]
      # t.index [:disease_id, :patient_id]
    end
  end
end
