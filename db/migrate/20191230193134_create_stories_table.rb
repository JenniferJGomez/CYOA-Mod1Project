class CreateStoriesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :story_name
      t.string :opening_scene
    end
  end
end
