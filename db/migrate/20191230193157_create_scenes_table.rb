class CreateScenesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :scenes do |t|
      t.text :title_text
      t.text :scene_text
    end
  end


end
