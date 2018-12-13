class Request < ApplicationRecord
  belongs_to :patient
  belongs_to :symptom
  belongs_to :specialist

  has_many :cases
end
