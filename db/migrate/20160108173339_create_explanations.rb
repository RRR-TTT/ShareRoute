class CreateExplanations < ActiveRecord::Migration
  def change
    create_table :explanations do |t|
      t.string :ExplanationContent
      t.references :UpdatedUser, class_name: "User"
      t.datetime :LastUpdate
			t.integer :explanable_id
			t.string :explanabel_type

      t.timestamps null: false
    end
  end
end
