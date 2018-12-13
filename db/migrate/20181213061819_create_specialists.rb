class CreateSpecialists < ActiveRecord::Migration[5.2]
  def change
    create_table :specialists do |t|
      t.string :type

      t.timestamps
    end
  end
end
