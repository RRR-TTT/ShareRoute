class CreateGoalpoints < ActiveRecord::Migration
  def change
    create_table :goalpoints do |t|
      t.string :GoalpointName
      t.string :GoalpointSpendTime

      t.timestamps null: false
    end
  end
end
