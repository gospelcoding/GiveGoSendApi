class CreatePhotosStatusUpdatesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :photos_status_updates do |t|
      t.references :photo
      t.references :status_update

      t.timestamps
    end
  end
end
