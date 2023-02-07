class Person < ApplicationRecord
  include Visible

  has_many :appointments
  has_many :guardians, through: :appointments
  
  has_many :assets

  validates :given_names, presence: true, length: { minimum: 3 }
  validates :surname, presence: true, length: {minimum: 5 }
end
