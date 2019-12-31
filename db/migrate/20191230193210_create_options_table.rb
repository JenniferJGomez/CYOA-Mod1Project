class CreateOptionsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.integer :base_scene
    end
  end

end
