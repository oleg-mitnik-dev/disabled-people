class Person < ApplicationRecord
  has_many :appointments
  has_many :guardians, through: :appointments

  validates :given_names, presence: true, length: { minimum: 3 }
  validates :surname, presence: true, length: {minimum: 5 }
  
  VALID_STATUSES = ['public', 'private', 'archived']
  
  validates :status, inclusion: { in: VALID_STATUSES }
  
  def archived?
    status == 'archived'
  end
end
