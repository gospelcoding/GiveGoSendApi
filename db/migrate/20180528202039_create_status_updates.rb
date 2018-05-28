class CreateStatusUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :status_updates do |t|
      t.references :missionary, foreign_key: true
      t.string :text
      t.references :prayer_request, foreign_key: true

      t.timestamps
    end
  end
end
