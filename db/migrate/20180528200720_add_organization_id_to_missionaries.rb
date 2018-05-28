class AddOrganizationIdToMissionaries < ActiveRecord::Migration[5.2]
  def change
    add_reference :missionaries, :organization
  end
end
