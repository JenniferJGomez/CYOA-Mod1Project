class CreateOptionsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.integer :base_id
      t.integer :option_id
    end
  end
end
