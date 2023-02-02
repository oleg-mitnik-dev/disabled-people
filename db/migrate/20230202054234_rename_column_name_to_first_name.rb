class RenameColumnNameToFirstName < ActiveRecord::Migration[7.0]
  def change
    rename_column :people, :name, :given_names
  end
end
