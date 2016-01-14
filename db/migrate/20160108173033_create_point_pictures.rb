class CreatePointPictures < ActiveRecord::Migration
  def change
    create_table :point_pictures do |t|
      t.string :PointPictureImage
      t.references :PostingUser, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
