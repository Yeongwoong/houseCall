class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.references :specialist, foreign_key: true
      t.string :kakao_id
      t.string :license_number
      t.integer :gender
      t.datetime :birthday
      t.string :career

      t.timestamps
    end
  end
end
