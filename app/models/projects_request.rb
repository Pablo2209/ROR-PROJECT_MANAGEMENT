class ProjectsRequest < ApplicationRecord
  belongs_to :project
  belongs_to :ingredient
end
