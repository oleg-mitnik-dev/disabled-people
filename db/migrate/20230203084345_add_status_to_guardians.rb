class AddStatusToGuardians < ActiveRecord::Migration[7.0]
  def change
    add_column :guardians, :status, :string
  end
end
