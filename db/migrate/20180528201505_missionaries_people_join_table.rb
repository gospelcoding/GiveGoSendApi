class MissionariesPeopleJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :missionaries_people do |t|
      t.references :missionary
      t.references :person

      t.timestamps
    end
  end
end
