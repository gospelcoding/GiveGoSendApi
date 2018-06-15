class RenamePeopleToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_table :people, :users
    rename_column :messages, :person_id, :user_id
    rename_column :missionaries_people, :person_id, :user_id
    rename_column :people_prayer_requests, :person_id, :user_id
  end
end
