class CreateJoinTableDoctorsTimetable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :doctors, :timetables do |t|
      # t.index [:doctor_id, :timetable_id]
      # t.index [:timetable_id, :doctor_id]
    end
  end
end
