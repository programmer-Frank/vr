class CreateExplanations < ActiveRecord::Migration
  def change
    create_table :explanations do |t|
      t.references :user
      t.references :lesson
      t.string :title
      t.string :token
      t.string :video_token
      t.string :script
      t.string :position_prior
      t.string :privacy
      t.string :language

      t.timestamps null: false
    end
  end
end
