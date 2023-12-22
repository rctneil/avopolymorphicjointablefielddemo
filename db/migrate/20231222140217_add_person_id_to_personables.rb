class AddPersonIdToPersonables < ActiveRecord::Migration[7.0]
  def change
    add_column :personables, :person_id, :integer
  end
end
