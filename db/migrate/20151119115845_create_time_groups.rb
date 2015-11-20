class CreateTimeGroups < ActiveRecord::Migration
  def change
    create_table :time_groups do |t|
      t.string :student_name
      t.integer :month
      t.integer :day
      t.integer :total_min

      t.timestamps null: false
    end
  end
end
