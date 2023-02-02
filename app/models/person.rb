class Person < ApplicationRecord
  validates :given_names, presence: true, length: { minimum: 3 }
  validates :surname, presence: true, length: {minimum: 5 }
end
