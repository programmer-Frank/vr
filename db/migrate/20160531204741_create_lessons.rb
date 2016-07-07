class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.string :tags
      t.string :status
      t.integer :course_id
      t.integer :instructor_id, foreign_key: :user_id

      t.timestamps null: false
    end
  end
end
