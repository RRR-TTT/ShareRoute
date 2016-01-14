class CreateStartpoints < ActiveRecord::Migration
  def change
    create_table :startpoints do |t|
      t.string :StartpointName
      t.integer :StartpointSpendTime

      t.timestamps null: false
    end
  end
end
