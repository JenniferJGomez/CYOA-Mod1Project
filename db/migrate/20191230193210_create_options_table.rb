class CreateOptionsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.integer :base_scene_id
      t.integer :next_scene_id
    end
  end

end
