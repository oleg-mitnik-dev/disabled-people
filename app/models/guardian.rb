class Guardian < ApplicationRecord
  has_many :appointments
  has_many :people, through: :appointments
end
