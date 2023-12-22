class CreateCoasters < ActiveRecord::Migration[7.0]
  def change
    create_table :coasters do |t|
      t.text :name

      t.timestamps
    end
  end
end
