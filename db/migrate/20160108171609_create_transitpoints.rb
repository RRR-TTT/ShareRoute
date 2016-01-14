class CreateTransitpoints < ActiveRecord::Migration
  def change
    create_table :transitpoints do |t|
      t.string :TransitpointName
      t.integer :TransitpointSpendTime

      t.timestamps null: false
    end
  end
end
