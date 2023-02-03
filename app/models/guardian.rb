class Guardian < ApplicationRecord
  include Visible

  has_many :appointments
  has_many :people, through: :appointments
end
