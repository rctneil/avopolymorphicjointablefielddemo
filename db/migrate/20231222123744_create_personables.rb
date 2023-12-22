class CreatePersonables < ActiveRecord::Migration[7.0]
  def change
    create_table :personables do |t|
      t.integer :personable_id
      t.string :personable_type
      t.text :role

      t.timestamps
    end
  end
end
