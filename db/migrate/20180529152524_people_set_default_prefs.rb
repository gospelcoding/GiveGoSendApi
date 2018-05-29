class PeopleSetDefaultPrefs < ActiveRecord::Migration[5.2]
  def up
    change_column :people, :prefs, :json, default: {}
  end

  def down
    # No need
  end
end
