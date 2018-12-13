class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.references :family, foreign_key: true
      t.references :disease, foreign_key: true
      t.references :medicine, foreign_key: true
      t.references :family_role, foreign_key: true
      t.string :kakao_id
      t.string :name, limit: 40
      t.string :road_addr
      t.string :family_history
      t.datetime :birthday
      t.integer :gender
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end
