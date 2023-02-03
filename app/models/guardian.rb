class Guardian < ApplicationRecord
  has_many :appointments
  has_many :people, through: :appointments

  VALID_STATUSES = ['public', 'private', 'archived']
  
  validates :status, inclusion: { in: VALID_STATUSES }
  
  def archived?
    status == 'archived'
  end
end
