class CreateJoinTableDoctorsGuRegions < ActiveRecord::Migration[5.2]
  def change
    create_join_table :doctors, :gu_regions do |t|
      # t.index [:doctor_id, :gu_region_id]
      # t.index [:gu_region_id, :doctor_id]
    end
  end
end
