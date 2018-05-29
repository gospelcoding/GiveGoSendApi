class PeopleAddMissionaryIdCol < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :missionary
  end
end
