class Asset < ApplicationRecord
  belongs_to :person
  
  validates :name, presence: true
end
