class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.references :request, foreign_key: true
      t.references :doctor, foreign_key: true
      t.references :disease, foreign_key: true
      t.references :prescription, foreign_key: true
      t.datetime :arrived_date_time
      t.datetime :done_date_time
      t.string :doctor_comment
      t.integer :charged_bill

      t.timestamps
    end
  end
end
