class MissionariesFixNameAndAddKids < ActiveRecord::Migration[5.2]
  def change
    remove_column :missionaries, :person_id, :integer
    add_column :missionaries, :couple, :boolean
    add_column :missionaries, :gender, :integer
    add_column :missionaries, :name, :string
    add_column :missionaries, :husband_name, :string
    add_column :missionaries, :wife_name, :string
  end
end
