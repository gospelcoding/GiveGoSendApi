class CreateMissionaries < ActiveRecord::Migration[5.2]
  def change
    create_table :missionaries do |t|
      t.references :person
      t.string :subtitle
      t.string :description
      t.string :link
      t.string :header_photo
      t.string :location

      t.timestamps
    end
  end
end
