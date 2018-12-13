class CreateDiseases < ActiveRecord::Migration[5.2]
  def change
    create_table :diseases do |t|
      t.string :code, limit: 40
      t.string :name_kor
      t.string :name_eng

      t.timestamps
    end
  end
end
