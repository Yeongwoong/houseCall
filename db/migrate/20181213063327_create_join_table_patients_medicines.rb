class CreateJoinTablePatientsMedicines < ActiveRecord::Migration[5.2]
  def change
    create_join_table :patients, :medicines do |t|
      # t.index [:patient_id, :medicine_id]
      # t.index [:medicine_id, :patient_id]
    end
  end
end
