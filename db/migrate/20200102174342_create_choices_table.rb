class CreateChoicesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.string :name
      t.text :scene
      t.text :option
    end
  end
end
