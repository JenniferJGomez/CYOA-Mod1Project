class CreateScenesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :scenes do |t|
      t.integer :scene_id
      t.string :base_scene
      t.string :option_a
      t.string :option_b 
    end
  end
end
