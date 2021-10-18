class EngineersBank < ApplicationRecord
  belongs_to :engineer
  belongs_to :bank
end
