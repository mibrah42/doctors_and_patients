class Patient < ApplicationRecord
  has_many :consultations
  has_many :doctors, though: :consultations

  validates :name, presence: true
end
