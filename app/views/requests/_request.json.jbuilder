json.extract! request, :id, :name, :type, :d_day, :city, :n_day, :viatic, :state, :created_at, :updated_at
json.url request_url(request, format: :json)
