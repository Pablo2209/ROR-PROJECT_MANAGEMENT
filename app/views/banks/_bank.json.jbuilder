json.extract! bank, :id, :name, :acc_type, :number, :created_at, :updated_at
json.url bank_url(bank, format: :json)
