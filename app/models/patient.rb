class Patient < ApplicationRecord
  belongs_to :family
  belongs_to :disease
  belongs_to :medicine
  belongs_to :family_role

  has_many :requests
end
