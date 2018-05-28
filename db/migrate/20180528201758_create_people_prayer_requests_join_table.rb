class CreatePeoplePrayerRequestsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :people_prayer_requests do |t|
      t.references :person
      t.references :prayer_request
    end
  end
end
