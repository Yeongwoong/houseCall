class Specialist < ApplicationRecord
  has_many :doctors
  has_many :requests

end
