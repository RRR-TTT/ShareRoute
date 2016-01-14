class AddIdAndTypeToMap < ActiveRecord::Migration
  def change
    add_column :maps, :mapable_id, :integer
    add_column :maps, :mapable_type, :string
  end
end
