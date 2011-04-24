class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :title
      t.date :begin_date
      t.date :end_date
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
