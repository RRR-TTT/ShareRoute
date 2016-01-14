class CreateUserRelationships < ActiveRecord::Migration
  def change
    create_table :user_relationships do |t|
      t.references :favorite_user, index: true
      t.references :favorited_user, index: true

      t.timestamps null: false

			t.index [:favorite_user_id, :favorited_user_id], unique: true, :name => 'user_favorite_relalationship_index'
    end
  end
end
