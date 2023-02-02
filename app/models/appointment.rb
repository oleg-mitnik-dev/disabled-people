class Appointment < ApplicationRecord
  belongs_to :person
  belongs_to :guardian
end