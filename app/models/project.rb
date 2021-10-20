class Project < ApplicationRecord
    /asociacion con la tabla intermedia/
    has_many :projects_requests, dependent: :destroy

    /asociacion con ingredients a travez de la tabla intermedia/
    has_many :requests, through: :projects_requests

    /Para disponer del formulario de ingredient y la tabla intermedia/
    accepts_nested_attributes_for :requests, :projects_requests, reject_if: :all_blanck, allow_destroy: true
end
