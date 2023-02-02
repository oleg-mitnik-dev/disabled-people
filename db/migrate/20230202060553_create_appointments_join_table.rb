class CreateAppointmentsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :people, :guardians do |t|
      # t.index [:person_id, :guardian_id]
      # t.index [:guardian_id, :person_id]
    end
  end
end
