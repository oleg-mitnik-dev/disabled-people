class AddStatusToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :status, :string
  end
end
