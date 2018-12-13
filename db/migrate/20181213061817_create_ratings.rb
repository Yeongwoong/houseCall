class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.decimal :kindness_score, precision: 16, scale: 1
      t.decimal :professionalism_score, precision: 16, scale: 1

      t.timestamps
    end
  end
end
