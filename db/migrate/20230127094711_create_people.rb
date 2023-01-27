class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname

      t.timestamps
    end
    add_index :people, :surname
  end
end
