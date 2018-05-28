class CreatePrayerRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :prayer_requests do |t|
      t.references :missionary
      t.string :text
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
