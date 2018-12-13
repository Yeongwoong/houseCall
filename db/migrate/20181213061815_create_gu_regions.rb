class CreateGuRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :gu_regions do |t|
      t.string :name, limit: 40

      t.timestamps
    end
  end
end
