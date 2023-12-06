class CreateOcurrences < ActiveRecord::Migration[5.2]
  def change
    create_table :ocurrences do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :status
      t.string :data

      t.timestamps
    end
  end
end
