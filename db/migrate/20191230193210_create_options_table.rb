class CreateOptionsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :selection 
    end
  end
end
