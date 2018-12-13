class Case < ApplicationRecord
  belongs_to :request
  belongs_to :doctor
  belongs_to :disease
  belongs_to :prescription
end
