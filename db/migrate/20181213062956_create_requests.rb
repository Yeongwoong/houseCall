class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :patient, foreign_key: true
      t.references :symptom, foreign_key: true
      t.references :specialist, foreign_key: true
      t.datetime :requested_time
      t.datetime :reservation_time
      t.integer :reservation_duration_min, :default => 30
      t.boolean :is_matched, :default => false
      t.integer :estimated_bill

      t.timestamps
    end
  end
end
