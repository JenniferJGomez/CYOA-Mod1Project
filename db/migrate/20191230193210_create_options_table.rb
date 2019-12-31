class CreateOptionsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.integer :base_id
      t.integer :outcome_id
      t.text :option_text
    end
  end
end
