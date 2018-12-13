class CreatePrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :prescriptions do |t|
      t.references :medicine, foreign_key: true
      t.decimal :volume, precision: 16, scale: 1
      t.string :method
      t.integer :duration_day
      t.integer :treat_per_day

      t.timestamps
    end
  end
end
