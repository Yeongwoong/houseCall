class CreateTimetables < ActiveRecord::Migration[5.2]
  def change
    create_table :timetables do |t|
      t.string :weekday, limit: 40
      t.string :time_start
      t.string :time_end

      t.timestamps
    end
  end
end
