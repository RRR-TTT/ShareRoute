class CreateNextpoints < ActiveRecord::Migration
  def change
    create_table :nextpoints do |t|
      t.string :NextpointName
      t.integer :NextpointRequiredTime
      t.string :NextpointTransportation

      t.timestamps null: false
    end
  end
end
