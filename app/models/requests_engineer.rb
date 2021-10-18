class RequestsEngineer < ApplicationRecord
  belongs_to :request
  belongs_to :engineer
end
