class CreateUserRoutes < ActiveRecord::Migration
  def change
    create_table :user_routes do |t|
      t.integer :total_time
      t.string :UserRouteName

      t.timestamps null: false
    end
  end
end
