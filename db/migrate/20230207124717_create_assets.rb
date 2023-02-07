class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :name
      t.string :location
      t.string :management
      t.string :responsible
      t.date :date_of_appointment

      t.timestamps
    end
  end
end
