class CreateMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :medicines do |t|
      t.string :code
      t.string :name_kor
      t.string :name_eng

      t.timestamps
    end
  end
end
